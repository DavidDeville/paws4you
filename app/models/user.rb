class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :list_pets
  has_many :pets, through: :list_pets
  belongs_to :shelter, optional: true

  # Finds all pets liked by the user
  def liked_pets
    list_pets.where(liked: true).map { |list| Pet.find(list.pet_id) }
  end

  # For each pet liked, we find its shelter
  # If the shelter already exist in the hash, we add the pet to the related
  # shelter. Else, we create a new array of pets and insert the new one
  def pets_shelters
    pet_shelter = {}
    liked_pets.each do |pet|
      shelter = Shelter.find(pet.shelter_id)
      if pet_shelter.has_key?(shelter)
        pet_shelter[shelter] << pet
      else
        pet_shelter[shelter] = [pet]
      end
    end
    return pet_shelter
  end
end
