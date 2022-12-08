class UsersController < ApplicationController

  def edit

  end

  def update
    current_user.update(current_user_params)
    redirect_to pets_path
  end

  private

  def current_user_params
    params.require(:user).permit(:situation, :has_garden, :dog_preferences, :cat_preferences)
  end
end
