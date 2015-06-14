class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :product_images
  has_many :orders
  has_many :categorized_products

  SALES_TAX = 0.09


  def sale_message
    if price.to_i < 20
      return "Discount Item!"
    else
      return "On Sale!"
    end
  end

  def calculate_tax
    price.to_i * SALES_TAX
  end

  def calculate_total
    price.to_i + tax.to_i
  end

end
