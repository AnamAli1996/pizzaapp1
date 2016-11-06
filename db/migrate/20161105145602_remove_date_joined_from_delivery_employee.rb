class RemoveDateJoinedFromDeliveryEmployee < ActiveRecord::Migration
  def change
    remove_column :delivery_employees, :Date_joined, :date
  end
end
