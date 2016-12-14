class AddLatlongToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :latitude, :float
    add_column :customers, :longitude, :string
    add_column :customers, :float, :string
  end
end
