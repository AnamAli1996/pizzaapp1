class CreateDeliveryEmployees < ActiveRecord::Migration
  def change
    create_table :delivery_employees do |t|
      t.string :name
      t.integer :phone_number
      t.string :sex
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
