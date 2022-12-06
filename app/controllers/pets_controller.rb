class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @pets = @pets.where("category ILIKE ?", "chien") if current_user.dog_preferences == true
    @pets = @pets.where("category ILIKE ?", "chat") if current_user.cat_preferences == true

    if params[:refresh]
      current_user.list_pets.where(liked: false).destroy_all
    end

    current_user.list_pets.each do | list |
      @pets = @pets.where.not(id: list.pet_id)
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end
  
  def new
    @pet = Pet.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to show_dashboard_path(@pet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :race, :category, :family_friendly)
  end
end
