class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :drink_brand
      t.float :price
      t.string :image

      t.timestamps null: false
    end
  end
end
