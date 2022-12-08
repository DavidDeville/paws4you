class RenameAgeToPets < ActiveRecord::Migration[7.0]
  def change
    rename_column :pets, :age, :birthday
  end
end
