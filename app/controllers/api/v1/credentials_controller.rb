module Api::V1
  class CredentialsController < ApiController
    respond_to :json
    
    # GET /me.json
    def me
      respond_with current_resource_owner
    end

    private
    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end