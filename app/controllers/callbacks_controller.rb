class CallbacksController < ApplicationController
  
  def handler
    # FIXME: this IS a BAD way to handle it. (pardon me.. :D)
    send(params[:provider].to_sym)
  end
  
  private
  def numedik
    render json: params
  end
end