Rails.application.routes.draw do
  get "users/show"
  devise_for :users
  root 'homes#index'
  resources :reservations
  resources :hairstyles
end
