module Api::V1
  class ProfilesController < ApiController
    before_action :doorkeeper_authorize! # Require access token for all actions
    respond_to     :json

    def index
      respond_with "hello"
    end
  end
end