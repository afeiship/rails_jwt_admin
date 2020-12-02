module RailsJwtAdmin
  class InstallGenerator < Rails::Generators::Base
    desc "Configure necessary files to use RailsJwtAdmin"

    def generate_model
      rake "rails_jwt_admin:install:migrations"
    end

    def create_routes
      route 'mount RailsJwtAdmin::Engine => "/rails_jwt_admin"'
    end

    def add_gems
      gem "jwt"
      gem "bcrypt"
    end
  end
end
