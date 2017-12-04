class ItemsController < ApplicationController
  before_action :set_item, only: [:show,  :update]
  
  def index
    @items = Item.where(cart_id: nil)
    if !current_user.cart
      Cart.create(user_id: current_user.id)
    end
  end

  def create
    old_item = Item.find(params[:format])
    @item = current_user.cart.items.new(name: old_item.name, price: old_item.price, photo: old_item.photo, cart_id: current_user.cart.id)
    @item.save
    redirect_to cart_path(current_user)
  end

  def show
    
  end

 def destroy
  @item.find(params[:format])
  @item.destroy
  redirect_to cart_path(current_user)
 end
  
  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :photo)
  end

end

