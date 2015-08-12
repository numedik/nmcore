Rails.application.routes.draw do

  devise_for :users
  use_doorkeeper
  # You can have the root of your site routed with "root"
  root 'home#landing'

  controller :home do
    get '/home/doorkeeper'
  end

  scope :lookup do
    get ':lookupmodel' => "lookup#dblookup"
  end

  resources :patients
  controller :patients do
    get '/search-patient' => 'patients#search_patient'
    get '/search-patient-autosuggest' => 'patients#search_patient_autosuggest'
    get '/load-mykad-picture/:imagename' => 'patients#load_mykad_picture'
    get '/print-detail-patient/:patientid' => 'patients#print_detail_patient'
  end

  resources :treatments
  scope :treatments do
    get '/active-treatment-patient' => 'treatments#active_treatment_patient'
    get '/list-treatment-patient' => 'treatments#list_past_treatment'
  end

  resources :appointments
  scope :appointments do

  end

  

  get 'lookup' => 'lookup#index'
end
