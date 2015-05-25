module Api::V1
  class ProfilesController < ApiController
    respond_to     :json

    def index
      respond_with User.all
    end
  end
end