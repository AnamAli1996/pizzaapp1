class RemovePasswordDigestFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :password_digest, :string
  end
end
