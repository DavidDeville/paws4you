class AddCatFriendlyToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :cat_friendly, :boolean
  end
end
