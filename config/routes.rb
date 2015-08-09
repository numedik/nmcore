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
  
  controller :patients do
    get '/register-new-patient' => 'patients#register_new_patient'
    get '/search-patient' => 'patients#search_patient'
    get '/search-patient-autosuggest' => 'patients#search_patient_autosuggest'
    get '/load-mykad-picture/:imagename' => 'patients#load_mykad_picture'
    get '/print-detail-patient/:patientid' => 'patients#print_detail_patient'
  end
  
  controller :treatments do
    get '/register-new-treatment' => 'treatments#register_new_treatment'
    get '/active-treatment-patient' => 'treatments#active_treatment_patient'
    get '/list-treatment-patient' => 'treatments#list_past_treatment'
  end

  get 'lookup' => 'lookup#index'
end
