class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :list_pets
end
