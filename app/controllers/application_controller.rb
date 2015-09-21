class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def doorkeeper_unauthorized_render_options(ex)
  
    # FIXME: either need ES or Indexing
    @reason ||= params[:access_token].nil? ? "Empty access_token" : nil
    @reason ||= (access_token  = ActiveRecord::Base.establish_connection
      .connection.execute("SELECT * FROM oauth_access_tokens WHERE token = '#{params[:access_token]}'")
      .first).nil? ? "Invalid access_token" : nil
    @reason ||= !access_token[6].nil? ? 
      "access_token revoked" : nil
    @reason ||= access_token[7] + access_token[5].minutes < Time.now ?
      "access_token has expired" : nil
      
    @reason ||= "Unkown Error"
    { 
      template: 'oauth2/unauthorized',
      content_type: 'text/json',
      status: 401
    }
  end

end
