class RegistrationsController < Devise::RegistrationsController
  after_filter :add_profile

  protected

  def add_profile
    if current_user
      @profile = Profile.create(params[:profile])
      @profile.user_id = current_user.id 
      @profile.save
    end
  end
 

  def after_sign_up_path_for(resource)
    root_url
  end

end
