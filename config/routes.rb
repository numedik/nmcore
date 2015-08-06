Rails.application.routes.draw do
  use_doorkeeper
  
  devise_for :users do
    get 'sign_out', :to => 'users/sessions#destroy', :as => :destroy_user_session
  end
  
  # You can have the root of your site routed with "root"
  root 'home#landing'
  
  controller :callbacks do 
    get 'callbacks/:provider' => 'callbacks#handler'
  end
  
  controller :home do
    get '/home/doorkeeper'
  end

  namespace :api do
    namespace :v1 do
      resources :profiles
      get '/me' => "credentials#me"
    end
  
  end
  
  scope :lookup do
    get 'workorder' => "lookup#workorder" 
  end
  
end
