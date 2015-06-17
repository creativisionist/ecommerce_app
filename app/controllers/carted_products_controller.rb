class CartedProductsController < ApplicationController

  def index
    @carted_product = CartedProduct.all
    @products = Product.all
  end

  def create
    @order = CartedProduct.create(quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id, status: "carted")
    redirect_to "/carted_products"
  end
end
