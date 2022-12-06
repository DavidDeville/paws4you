class AddHasAgreedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :has_agreed, :boolean, default: false
  end
end
