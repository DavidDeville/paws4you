class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :race
      t.string :gender
      t.references :shelter, null: false, foreign_key: true
      t.string :category
      t.boolean :family_friendly
      t.boolean :is_adopted

      t.timestamps
    end
  end
end
