class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :pizza_id
      t.integer :pizza_quantity
      t.integer :side_id
      t.integer :side_quantity
      t.integer :drink_id
      t.integer :drink_quantity
      t.integer :dessert_id
      t.integer :dessert_quantity

      t.timestamps null: false
    end
  end
end
