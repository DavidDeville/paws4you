class ChangeBirthdayToPets < ActiveRecord::Migration[7.0]
  def change
    change_column :pets, :birthday, :string
  end
end
