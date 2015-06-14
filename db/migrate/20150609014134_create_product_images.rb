class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :image_url
      t.integer :product_id

      t.timestamps null: true
    end
  end
end
