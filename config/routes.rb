Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end
