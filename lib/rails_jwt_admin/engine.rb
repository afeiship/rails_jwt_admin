module RailsJwtAdmin
  class Engine < ::Rails::Engine
    isolate_namespace RailsJwtAdmin
    config.generators.api_only = true

    config.autoload_paths += Dir["#{config.root}/lib/vendors/"]

    puts "autoload path...."
    puts config.autoload_paths

    # initializer "rails_jwt_admin.add_middleware" do |app|
    #   app.middleware.use RailsJwtAdmin::Middleware
    # end
  end
end
