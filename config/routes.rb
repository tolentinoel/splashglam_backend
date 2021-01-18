Rails.application.routes.draw do
  resources :reviews
  resources :lists
  resources :products
  resources :users

  post "/login", to: "users#login"
  get "/getuser", to: "users#get_user"
end
