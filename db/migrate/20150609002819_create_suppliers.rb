class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|

      t.timestamps null: true
    end
  end
end
