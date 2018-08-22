Rails.application.routes.draw do
  resources :scooters, only: :index do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations
  root to: 'scooters#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
