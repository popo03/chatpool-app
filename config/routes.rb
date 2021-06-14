Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :groups, only: [:new, :create]
end
