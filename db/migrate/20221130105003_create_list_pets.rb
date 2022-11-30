class CreateListPets < ActiveRecord::Migration[7.0]
  def change
    create_table :list_pets do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :liked

      t.timestamps
    end
  end
end
