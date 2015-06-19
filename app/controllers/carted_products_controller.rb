class CartedProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @carted_product = CartedProduct.all
    @products = Product.all
  end

  def create
    @order = CartedProduct.new(quantity: params[:quantity], product_id: params[:product_id], user_id: current_user.id, status: "carted")
    @product = Product.find_by(id: params[:product_id])
    if @carted_product.save
      redirect_to "/carted_products"
    else
      render "/products/show"
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Product removed"
    redirect_to "/carted_products"
  end
end
