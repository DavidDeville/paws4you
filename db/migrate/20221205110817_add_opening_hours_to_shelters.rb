class AddOpeningHoursToShelters < ActiveRecord::Migration[7.0]
  def change
    add_column :shelters, :opening_hour, :string
    add_column :shelters, :closing_hour, :string
  end
end
