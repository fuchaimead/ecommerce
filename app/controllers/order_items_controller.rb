class OrderItemsController < ApplicationController

  def create
    @order_item = current_order.order_items.new
    @order_item = current_order.save
    redirect_to cart_path(current_user)
  end

  def update
    @order_item = current_order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = current_order.order_items
  end

  def destroy
    @order_item = current_order.order_items.find(params[:id])
    @order_item.destroy
    @order_item = current_order.order_items
  end


end


