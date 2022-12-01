class PetsController < ApplicationController

  def index
    @pets = Pet.all
    @pets = @pets.where("category ILIKE ?", "chien") if current_user.dog_preferences == true
    @pets = @pets.where("category ILIKE ?", "chat") if current_user.cat_preferences == true
    current_user.list_pets.each do | list |
      @pets = @pets.where.not(id: list.pet_id)
    end
  end
end
