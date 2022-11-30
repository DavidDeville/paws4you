class AddElementsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :phone_number, :integer
    add_column :users, :age, :integer
    add_column :users, :situation, :string
    add_column :users, :has_garden, :boolean
    add_column :users, :dog_preferences, :boolean
    add_column :users, :cat_preferences, :boolean
  end
end
