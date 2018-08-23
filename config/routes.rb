Rails.application.routes.draw do

  resources :scooters, only: :index do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: :index
  root to: 'scooters#index'
  devise_for :users do
      match '/users/sign_out' => 'sessions#destroy', via: ['get', 'delete']
  end
  ActiveAdmin.routes(self)
  # FAUX devise_for :admin_users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
