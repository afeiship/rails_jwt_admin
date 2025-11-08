require_dependency "rails_jwt_admin/application_controller"

module RailsJwtAdmin
  class UsersController < ApplicationController
    before_action :authenticate!

    # 取当前用户信息
    def me
      data = current_user.as_json(only: [:id, :username, :email])
      ok(data: data)
    end
  end
end
