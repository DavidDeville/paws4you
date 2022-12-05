class Pet < ApplicationRecord
  GENDERS = ["mâle", "femelle"]
  CATEGORY = ["chien", "chat"]
  has_one_attached :photo
  belongs_to :shelter
  has_many :list_pets, dependent: :destroy
  validates :name, length: { minimum: 3 }, presence: true
  validates :age, presence: true
  validates :race, presence: true
  #--------------------validation ou valeur par default?--------------
  validates :gender, presence: true, inclusion: GENDERS
  # validates :shelter, presence: true
  validates :category, presence: true, inclusion: CATEGORY
end
