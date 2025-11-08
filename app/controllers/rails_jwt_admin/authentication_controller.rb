require_dependency "rails_jwt_admin/application_controller"

module RailsJwtAdmin
  class AuthenticationController < ApplicationController
    def create
      if user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
        # render json: user.token
        ok(data: user.token)
      else
        # render json: { errors: ["Username or password error."] }, status: :unauthorized
        fail(errors: ["Username or password error."], code: 401)
      end
    end
  end
end
