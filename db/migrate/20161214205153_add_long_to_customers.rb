class AddLongToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :longitude, :float
  end
end
