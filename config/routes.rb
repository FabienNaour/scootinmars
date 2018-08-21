Rails.application.routes.draw do
  resources :scooters, only: [:index, :show]
  root to: 'scooters#index'
  devise_for :users
  root to: "pages#home"
  get 'reservations/index'
  get 'reservations/show'
  get 'scooters/scooter_id/reservations/new', to: 'reservations#new'
  get 'scooters/scooter_id/reservations', to: 'reservations#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
