RailsJwtAdmin::Engine.routes.draw do
  get "me", to: "users#me"
  resources :auth, only: :create
end
