class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
