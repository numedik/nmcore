class HomeController < ApplicationController
  def landing

  end
  
  def doorkeeper
    appId = "73a83a4931752dcb298e24cd3ec8ebe402c44a7e6d23085566f7995268365fed"
    appSecret = "5a342b5d2a32a10a2d7ae7cc3d35b69270be52e9acda72cb88fd09369023d5ae"
    
    client ||= OAuth2::Client.new(appId, appSecret, :site => "http://localhost:3000")
    
    url = client.auth_code.authorize_url(
      :redirect_uri => 'http://localhost:3000/callbacks/numedik'
    )
    
    redirect_to url
  end
end
