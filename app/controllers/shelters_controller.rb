class SheltersController < ApplicationController
  def show
    @shelter = Shelter.find(params[:id])
    # The `geocoded` scope filters only shelters with coordinates
    @markers =
      [{
        lat: @shelter.latitude,
        lng: @shelter.longitude
      }]
  end
end
