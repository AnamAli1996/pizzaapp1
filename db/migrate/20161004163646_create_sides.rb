class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.string :side_name
      t.float :price
      t.string :description
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.string :image

      t.timestamps null: false
    end
  end
end
