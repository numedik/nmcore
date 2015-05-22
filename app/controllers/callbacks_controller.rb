class CallbacksController < ApplicationController
  
  def handler
    send(params[:provider].to_sym)
  end
  
  private
  def numedik
    render json: params
  end
end