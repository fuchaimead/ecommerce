Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  devise_for :users
  resources :users, :only => [:show]
  root 'items#index'
  
  resources :items  
  put "items/:id/in_cart", to: "items#in_cart", as: "in_cart"
  
  resources :carts
  resources :order_items, only: [:create, :update, :destroy]
 

end



