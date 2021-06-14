Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:index, :new, :create, :edit, :update]
end
