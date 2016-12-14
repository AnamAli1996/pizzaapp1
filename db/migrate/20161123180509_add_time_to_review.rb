class AddTimeToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :time, :time
  end
end
