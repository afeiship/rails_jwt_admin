module RailsJwtAdmin
  class Engine < ::Rails::Engine
    isolate_namespace RailsJwtAdmin
    config.generators.api_only = true
    config.autoload_paths += Dir["#{config.root}/lib/vendors"]
  end
end
