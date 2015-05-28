module Api::V1
  class ApiController < ::ApplicationController
    # this will filter the request (checks for access_code)
    before_action :doorkeeper_authorize!
    respond_to    :json

    # set the error message spit to unauthorized user
    def doorkeeper_unauthorized_render_options
      {
        :json => {
          :status => "Error",
          :reason => I18n.t("api.errors.invalid_session")
        }
      }
    end
  end
end