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

  get 'lookup' => 'lookup#index'

end
