Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :reservations, only: [:index, :show, :create]
      resources :cities, only: [:index, :show, :create]
      resources :homes, only: [:index, :show, :create]
      
      
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
    end
  end
end
