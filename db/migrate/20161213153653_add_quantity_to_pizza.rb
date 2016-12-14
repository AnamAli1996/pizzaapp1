class AddQuantityToPizza < ActiveRecord::Migration
  def change
    add_column :pizzas, :quantity, :integer
  end
end
