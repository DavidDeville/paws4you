class UpdateEmployeeDefaultToEmployeeUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :employee?, false
  end
end
