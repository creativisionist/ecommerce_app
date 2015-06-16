class CartedProductsController < ApplicationController

  def show
    @carted_product = Carted_product.find_by(id: params[:id])
  end

  def create

    order = Carted_product.create(quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id, status: "carted")
    redirect_to "/orders/#{order.id}"
  end
end
