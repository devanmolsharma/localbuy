Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/", to: "items#index"
  get "/item/:item", to: "items#view"
  get "/page/:page", to: "items#index"
  get "/categories", to: "categories#index"
  get "/cat/:category", to: "items#cat"
  get "/cat/view/:category", to: "categories#view"
  get "/find/:query", to: "items#find"
  get "/cat/find/:query", to: "categories#find"
  get "/user/:query", to: "users#find"
  get "/find/:cat/:query", to: "items#find"
  
  get "/user", to: "users#index"
  get "/user/search/:name", to: "users#search"
  get "user/view/:user", to: "users#view"
  get "/explore", to: "users#explore"
  get "/login", to: "users#login"
  get "/register", to: "users#register"
  post "/auth", to: "users#authenticate"
  get "/logout", to: "users#logout"
  post "/create", to: "users#create"
  get "/about", to: "application#about"
  get "/contact", to: "application#contact"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
