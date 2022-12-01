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

  private

  def listpets_params
    params.require(:list_pet).permit(:liked)
  end
end
