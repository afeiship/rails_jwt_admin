RailsJwtAdmin::Engine.routes.draw do
  get "me", to: "users#me"
  resources :authentication, only: :create
end
