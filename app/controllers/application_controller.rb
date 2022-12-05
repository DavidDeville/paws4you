class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :phone_number, :employee, :shelter_id])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :phone_number, :employee, :shelter_id])
  end


  # Redirect des users en fonction de #employee? après le formulaire d'inscription
  def after_sign_in_path_for(current_user)
    current_user.employee ? shelter_path(2) : pets_path
  end
end
