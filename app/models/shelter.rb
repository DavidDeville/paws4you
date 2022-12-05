class Shelter < ApplicationRecord
  has_many :pets
  has_many :users
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, presence: true
  # ----------------Vérifier si les deux lignes suivantes fonctionnent avec la view-----------
  validates :phone_number, presence: true, unless: ->(shelter) { shelter.email.present? }
  validates :email, presence: true, unless: ->(shelter) { shelter.phone_number.present? }
end
