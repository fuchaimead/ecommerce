Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  root 'items#index'
  
resources :items  
 put "items/:id/in_cart", to: "items#in_cart", as: "in_cart"
  
  resources :carts
 

end



