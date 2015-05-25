module Api::V1
  class ApiController < ::ApplicationController
    before_action :doorkeeper_authorize!
    respond_to     :json

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