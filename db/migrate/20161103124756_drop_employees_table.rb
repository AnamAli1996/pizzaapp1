class DropEmployeesTable < ActiveRecord::Migration
  class DropEmployeesTable < ActiveRecord::Migration
   def up
    drop_table :employees
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
end


