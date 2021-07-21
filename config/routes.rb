Rails.application.routes.draw do
  get "users/show"
  devise_for :users
  root 'homes#index'
  resources :reservations
  resources :hairstyles
  
  resources :items do
    resources :purchases, only: [:index, :create]
  end
end
