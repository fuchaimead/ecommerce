Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show]
  root 'items#index'
  
  resources :items  
  resources :carts
  resources :order_items, only: [:create, :update, :destroy]
  
  post '/items/:id', to: 'items#create'

end



