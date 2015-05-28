module Api::V1
  class CredentialsController < ApiController
    respond_to :json
    
    # /api/v1/me.json
    def me
      respond_with current_resource_owner
    end
  end
end