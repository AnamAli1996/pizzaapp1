class AddDateJoinedToDeliveryEmployee < ActiveRecord::Migration
  def change
    add_column :delivery_employees, :date_joined, :date
  end
end
