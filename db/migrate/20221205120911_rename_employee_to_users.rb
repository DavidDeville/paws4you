class RenameEmployeeToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :employee?, :employee
  end
end
