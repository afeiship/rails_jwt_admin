require_dependency "rails_jwt_admin/application_controller"

module RailsJwtAdmin
  class UsersController < ApplicationController
    before_action :authenticate!

    # 取当前用户信息
    def me
      render json: current_user.to_json
    end
  end
end
