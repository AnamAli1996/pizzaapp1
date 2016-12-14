class RemoveColumnFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :longitude, :integer
  end
end
