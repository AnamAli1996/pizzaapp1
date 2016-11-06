class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.date :date_joined
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
