RailsJwtAdmin::Engine.routes.draw do
  get "profile", to: "users#profile"
  resources :authentication, only: :create
end
