class Pet < ApplicationRecord
  GENDERS = ["mâle", "femelle"]
  CATEGORY = ["chien", "chat"]
  has_many_attached :photos
  belongs_to :shelter
  has_many :list_pets, dependent: :destroy
  validates :name, length: { minimum: 3 }, presence: true
  validates :birthday, presence: true
  validates :race, presence: true
  #--------------------validation ou valeur par default?--------------
  validates :gender, presence: true, inclusion: GENDERS
  # validates :shelter, presence: true
  validates :category, presence: true, inclusion: CATEGORY
end
