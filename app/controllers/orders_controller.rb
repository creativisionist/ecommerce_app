class OrdersController < ApplicationController

  def show

  end

  def create
    order = Order.create
    items_to_be_purchased = current_user.carted_products.where(status: "carted")
    items_to_be_purchased.each do |item|
      item.update(order_id: order.id, status: "purchased")
    end

    subtotal = 0
    order.carted_products.each do |item|
      price = Product.all.find_by(id: item.product_id).price
      quantity = item.quantity
      subtotal += (price * quantity)
    end
    tax = subtotal * 0.09
    total = subtotal + tax
    order.update(subtotal: subtotal, tax: tax, total: total)

    redirect_to "/orders/#{order.id}"
  end
end
