class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def doorkeeper_unauthorized_render_options
    {json: '{"status": "failure", "message":"401 Unauthorized"}'}
  end

end
