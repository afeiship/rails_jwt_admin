require_dependency "rails_jwt_admin/application_controller"

module RailsJwtAdmin
  class AuthenticationController < ApplicationController
    def create
      if user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
        render json: user.token
      else
        render json: { errors: ["Username or password error."] }, status: :unauthorized
      end
    end
  end
end
