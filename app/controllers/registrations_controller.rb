class RegistrationsController < Devise::RegistrationsController
 
 #autocomplete :group, :name, :full => true
 
 protected

  def after_sign_up_path_for(resource)
    new_profile_path
  end
end
