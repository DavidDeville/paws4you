class Shelter < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :pets
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, presence: true
  # ----------------Vérifier si les deux lignes suivantes fonctionnent avec la view-----------
  validates :phone_number, presence: true, unless: ->(shelter) { shelter.email.present? }
  validates :email, presence: true, unless: ->(shelter) { shelter.phone_number.present? }
end
