require_dependency "rails_jwt_admin/application_controller"

module RailsJwtAdmin
  class UsersController < ApplicationController
    before_action :authenticate!

    def index
      render json: current_user.to_json
    end
  end
end
