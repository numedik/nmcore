module Api::V1
  class ApiController < ::ApplicationController

    # will return user that hold the API key, 
    # if there is a session
    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end