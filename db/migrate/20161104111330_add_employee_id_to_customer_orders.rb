class AddEmployeeIdToCustomerOrders < ActiveRecord::Migration
  def change
    add_column :customer_orders, :employee_id, :integer
  end
end
