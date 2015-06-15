class ProductsController < ApplicationController
  def home
  end

  def index
    @product = Product.first
    @title = "Home"
    @products = Product.all
    if params[:sort]
      @products = Product.order(params[:sort] => params[:sort_order])
    end
    if params[:discount]
      @products = @products.where("price < ?", 10)
    end
    if params[:category]
      @products = Category.find_by(name: params[:category]).products
    end
      #localhost:3000/products?sort=price&sort_order=desc or asc (user must input)
      #Product.order("price" => "desc")
      #Product.order(price: :desc) same as Product.order(:price => :desc)
    #Product.all.order(:price => :asc).where("price <?", 2)
    # elsif params[:sort] == "highest_price"
    #   @products = 
    # elsif params[:sort] == "sale"
    #   @products = Product.where("price < ?", 10)
    # else params[:sort] == "random"
    #   # @products = Product.order(params[id:])
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    if params[:id] == "random"
      #code to find a random product
      products = Product.all
      @product = products.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def new
  end

  def create
    product = Product.create(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    Product_Image.create(product_id: product.id, image_url: params[:image_1]) if params[:image_1] != ""
    Product_Image.create(product_id: product.id, image_url: params[:image_2]) if params[:image_2] != ""
    flash[:success] = "Banana! You say banana, I say banana, we all go crazy for bananas!"
    redirect_to "/products/#{product.id}"
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:info] = "Lalalala!  I'm brand new!"
    redirect_to "/products/#{product_id}"
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    flash[:warning] = "I don't exist. :("
    redirect_to "/products"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name ILIKE ?", "%#{search_term}%")
    render :index
  end
end
