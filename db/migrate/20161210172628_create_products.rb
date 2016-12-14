class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :type
      t.string :image
      t.float :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
