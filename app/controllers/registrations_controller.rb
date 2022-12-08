class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
      puts 'this is happening yoyo mama'
      flash[:notice] = "Account succesfully updated"
      edit_user_registration_path
  end
end
