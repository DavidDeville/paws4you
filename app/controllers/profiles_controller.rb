class ProfilesController < ApplicationController

  def confirm
    current_user.update(has_agreed: true)

    redirect_to pets_path
  end
end
