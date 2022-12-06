class DashboardsController < ApplicationController
  def show
    @shelter = Shelter.find(params[:id])
    @pets = @shelter.pets
  end
end
