class AddEmployeeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :employee?, :boolean
  end
end
