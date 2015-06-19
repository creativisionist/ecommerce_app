class ProductImage < ActiveRecord::Base
  belongs_to :product

   validates :image, presence: true
end
