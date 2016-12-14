class AddRegularToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :regular, :boolean
  end
end
