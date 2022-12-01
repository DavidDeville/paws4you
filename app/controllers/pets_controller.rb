class PetsController < ApplicationController

  def index
    @pets = Pet.all
    authorize @pets
  end
end
