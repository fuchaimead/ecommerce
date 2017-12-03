require 'items_controller'
class CartsController < ApplicationController

  def index
    
  end

  def show
    @cart = current_user.cart
  end

  def edit
  end
  



end
