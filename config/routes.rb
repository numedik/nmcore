Rails.application.routes.draw do

  devise_for :users
  use_doorkeeper
  # You can have the root of your site routed with "root"
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

    #list of module
    
    #pms - NUMEDIK PHARMACY MANAGEMENT SYSTEM (PMS)
    #bms - NUMEDIK BILLING MANAGEMENT SYSTEM (BMS)
    #opms - NUMEDIK OUTPATIENT MANAGEMENT SYSTEM (OPMS) / workorder
    #docs - NUMEDIK DOCUMENT SYSTEM (DocS)
    #mass - NUMEDIK MESSAGING SYSTEM (MASS)
    #tca - NUMEDIK APPOINTMENT SCHEDULING SYSTEM (TCA)
    #labs - NUMEDIK LABS MANAGEMENT SYSTEM (LabS)
    #qms - NUMEDIK QUEUE MANAGEMENT SYSTEM (QMS)
    #web - NUMEDIK WEB PORTAL (WEB)
    
    #dpis - NUMEDIK DIGITAL PATIENT INFORMATION SYSTEM (DPIS)
    scope 'dpis' do
      get '/search-bar/:searchkeyword' => 'patients#search_bar'
      get '/:patientid' => 'patients#patient_info'

      get '/search-patient' => 'patients#search_patient'
      get '/load-mykad-picture/:imagename' => 'patients#load_mykad_picture'
      get '/print-detail-patient/:patientid' => 'patients#print_detail_patient'
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
