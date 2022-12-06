class AddShelterToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shelter
  end
end
