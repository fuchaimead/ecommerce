class ItemsController < ApplicationController
  before_action :set_item, only: [:show,  :update, :in_cart]
  
  def index
    @items = Item.all
    @order_item = current_order.order_items.new
  end

  def show
  
  end

  
  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :photo, :in_cart)
  end

end

