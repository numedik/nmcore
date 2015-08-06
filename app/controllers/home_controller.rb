class HomeController < ApplicationController
  def landing

  end
  
  def doorkeeper
    # INFO: for testing only. each client will need 
    # these to connect to doorkeeper
    appId = "73a83a4931752dcb298e24cd3ec8ebe402"+
      "c44a7e6d23085566f7995268365fed"
    appSecret = "5a342b5d2a32a10a2d7ae7cc3d35b6"+
      "9270be52e9acda72cb88fd09369023d5ae"
    
    # BEGIN Basic Usage flow
    client ||= OAuth2::Client.new(
      appId, appSecret, 
      :site => "https://core.numedik.com"
    )
    url = client.auth_code.authorize_url(
      :redirect_uri => 'https://core.numedik.com/callbacks/numedik'
    )
    redirect_to url # will redirect the user to our API's sign in page
    # END Basic Usage Flow
  end
end
