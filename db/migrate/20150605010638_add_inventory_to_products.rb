class AddInventoryToProducts < ActiveRecord::Migration
  def change
      add_column :products, :inventory, :string
      add_column :products, :tax, :decimal, precision: 5, scale: 2
  end
end
