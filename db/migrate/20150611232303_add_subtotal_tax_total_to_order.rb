class AddSubtotalTaxTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal, precision: 10, scale: 2
    add_column :orders, :tax, :decimal, precision: 5, scale: 2
    add_column :orders, :total, :decimal, precision: 10, scale: 2
  end
end
