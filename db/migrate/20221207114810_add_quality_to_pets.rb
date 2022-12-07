class AddQualityToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :main_quality, :string
  end
end
