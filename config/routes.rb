RailsJwtAdmin::Engine.routes.draw do
  post "auth", to: "authentication#create"
  get "me", to: "users#me"
end
