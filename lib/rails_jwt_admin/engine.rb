module RailsJwtAdmin
  class Engine < ::Rails::Engine
    isolate_namespace RailsJwtAdmin
    config.generators.api_only = true
  end
end
