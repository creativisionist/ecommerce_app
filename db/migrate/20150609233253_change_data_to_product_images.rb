class ChangeDataToProductImages < ActiveRecord::Migration
  def change
    change_column :product_images, :product_id, :integer
  end
end
