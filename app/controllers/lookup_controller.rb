class LookupController < ApplicationController
  def workorder
    @rs = Workorder.all
    render formats: :json
  end
end