class ProfilesController < ApplicationController

  def confirm
    current_user.update(has_agreed: true)

    redirect_to users_preferences_edit_path
  end
end
