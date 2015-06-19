class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :product_images, dependent: :destroy
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true

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
