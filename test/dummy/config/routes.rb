Rails.application.routes.draw do
  mount RailsJwtAdmin::Engine => "/rails_jwt_admin"
end
