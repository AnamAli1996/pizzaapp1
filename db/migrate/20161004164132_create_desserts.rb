class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :dessert_name
      t.float :price
      t.string :description
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.string :image

      t.timestamps null: false
    end
  end
end
