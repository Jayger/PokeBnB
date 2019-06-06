Rails.application.routes.draw do
  resources :reservations, only: [:index, :show, :create]
  resources :cities, only: [:index, :show, :create]
  resources :homes, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
