class ItemsController < ApplicationController
  before_action :set_item, only: [:show,  :update, :in_cart]
  
  def index
    @items = Item.all
  end

  def show
  end

  def in_cart
    if @item.update(in_cart: true)
      redirect_to cart_path
        else
     render :show
    end 
  end
  
  private
  #strong parameters
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    # params[:page] security prevents user from adding more than what is in form
    params.require(:item).permit(:name, :price, :photo, :in_cart)
  end
end

