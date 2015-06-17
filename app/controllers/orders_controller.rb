class OrdersController < ApplicationController

  def show
    @order = Order.find_by(id: params[:id])
  end

  def create
    order = Order.create
    items_to_be_purchased = current_user.carted_products.where(status: "carted")
    items_to_be_purchased each do |item|
      item.update(order_id: order.id, status: "purchased")
    end
    order.carted_products each do |item|
      
    end
  end
end
