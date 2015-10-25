Rails.application.routes.draw do

  devise_for :users
  use_doorkeeper

  root 'home#landing'

  controller :home do
    get '/home/doorkeeper'
  end
  
  controller :callbacks do
    get '/callbacks/nmclis' => 'callbacks#nmclis'
  end
  
  scope '/api' do
    scope :lookup do
      get ':lookupmodel' => "lookup#dblookup"
    end
    get '__bulklookup' => "lookup#bulkrequest"

    #list of module
    
    scope 'dpis' do
      get '/search-bar/:searchkeyword' => 'patients#search_bar'
      get '/:patientid' => 'patients#patient_info'

      get '/search-patient' => 'patients#search_patient'
      get '/load-mykad-picture/:imagename' => 'patients#load_mykad_picture'
      get '/print-detail-patient/:patientid' => 'patients#print_detail_patient'
    end

    scope 'adt' do 
      post '/admit' => 'adt#admit'  
    end
    
    scope 'opms' do
      get '/active-treatment-patient' => 'treatments#active_treatment_patient'
      get '/list-treatment-patient' => 'treatments#list_past_treatment'
    end

    scope 'tca' do

    end

    scope 'pms' do
      get '/search-bar/:searchkeyword' => 'warehouses#search_bar'
    end

    scope 'bms' do

    end

    scope 'labs' do

    end

    get 'lookup' => 'lookup#index'
  end
end
