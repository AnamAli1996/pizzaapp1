class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :street_address
      t.string :city
      t.string :county
      t.string :postcode
      t.string :phone_number
      t.string :image
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
