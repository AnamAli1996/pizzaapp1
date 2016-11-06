class RemoveDeliveryEmployeeFromCustomerOrder < ActiveRecord::Migration
  def change
    remove_column :customer_orders, :delivery_employee, :integer
  end
end
