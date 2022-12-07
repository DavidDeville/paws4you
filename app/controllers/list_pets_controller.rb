class ListPetsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @list_pets = ListPet.new
    @list_pets.user = current_user
    @list_pets.pet = Pet.find(params["petId"])
    @list_pets.liked = params["liked"]
    @list_pets.save

    # Le nouveau rendu devrait être géré par stimulus
    # redirect_to pets_path
    # respond_to do |format|
    #   format.json
    # end
  end

  def index
    @pets_in_shelters = current_user.pets_shelters
  end

  def destroy
    @list_pet = ListPet.find_by_pet_id(params[:id])
    @list_pet.destroy

    redirect_to user_list_pets_path(current_user)
  end

  private

  def listpets_params
    params.require(:list_pet).permit(:liked)
  end
end
