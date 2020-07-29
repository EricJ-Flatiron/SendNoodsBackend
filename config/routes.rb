Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :addresses
  resources :orders
  resources :noodles
  resources :addons
  resources :charges 

  post "/login", to: "auth#create"
  post "/signup", to: "users#create"
  get "/profile", to: "users#show"
  post "/payment", to: "charges#create"
  # get '/secret', to: "charges#create"
end
