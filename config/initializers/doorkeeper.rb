Doorkeeper.configure do
  grant_flows %w(authorization_code implicit password client_credentials)
  
  resource_owner_authenticator do |routes|
    # Put your resource owner authentication logic here.
    # If you want to use named routes from your app you need
    # to call them on routes object eg.
    # routes.new_user_session_path
    current_user || warden.authenticate!(:scope => :user)
  end

  resource_owner_from_credentials do |routes|
    User.first
  end
  
  admin_authenticator do |routes|
    current_user && current_user.username == I18n.t('roles.admin') or
      redirect_to new_user_session_path
  end
end