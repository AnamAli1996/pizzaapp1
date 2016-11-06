class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :pizza_name
      t.integer :pizza_size
      t.float :price
      t.string :description
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.string :spice_level
      t.string :image

      t.timestamps null: false
    end
  end
end
