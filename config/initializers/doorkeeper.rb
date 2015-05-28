Doorkeeper.configure do
  # If user tring to access /oauth/applications,
  # check for role, if not an admin user, 
  # redirect to login
  admin_authenticator do |routes|
    current_user && current_user.username == I18n.t('roles.admin') or
      redirect_to new_user_session_path
  end
  
  # This one is for routes other than /oauth/*
  # pretty much like admin_authenticator
  resource_owner_authenticator do
    current_user or
      render json: {
        :status => "Error",
        :reason => I18n.t('api.errors.invalid_session') 
      }, :status => 404
  end
  
  # This block will be called to check whether the
  # resource owner is authenticated or not
  resource_owner_authenticator do |routes|
    # Put your resource owner authentication logic here.
    # If you want to use named routes from your app you need
    # to call them on routes object eg.
    # routes.new_user_session_path
    current_user || warden.authenticate!(:scope => :user)
  end
  
  # IMPORTANT: this is for authentication using API token/secrets
  resource_owner_from_credentials do
    warden.authenticate!(:scope => :user)
  end

  # Access token expiration time (default 2 hours)
  # access_token_expires_in 2.hours
  access_token_expires_in 5.minutes

  # Issue access tokens with refresh token (disabled by default)
  use_refresh_token

  # Define access token scopes for your provider
  # For more information go to
  # https://github.com/applicake/doorkeeper/wiki/Using-Scopes
  default_scopes  :public
  optional_scopes :write
end