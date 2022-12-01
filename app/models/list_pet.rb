class ListPet < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  validates :pet_id, uniqueness: { scope: :user_id }
end
