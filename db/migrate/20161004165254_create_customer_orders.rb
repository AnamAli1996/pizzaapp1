class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.integer :employee_id
      t.time :delivery_time

      t.timestamps null: false
    end
  end
end
