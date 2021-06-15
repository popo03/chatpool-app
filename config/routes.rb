Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :groups, only: [:index, :new, :create] do
    resources :rooms, only:[:index, :create]
  end
end
