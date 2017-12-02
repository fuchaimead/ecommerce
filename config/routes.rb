Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  root 'items#index'

  resources :items
  resources :carts

  
end
