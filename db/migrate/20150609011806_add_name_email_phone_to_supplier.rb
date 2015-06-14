class AddNameEmailPhoneToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :name, :string
    add_column :suppliers, :email, :string
    add_column :suppliers, :phone, :string
  end
end
