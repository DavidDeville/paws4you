class ListPetController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id

    if @pet.save
      redirect_to spa_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pet = pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to spa_path(@pet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pet_path, status: :see_other
  end

private

  def pet_params
    params.require(:pet).permit(:name, :age, :category, :gender, :race)
  end
end
