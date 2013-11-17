class ApplicationController < ActionController::Base
  protect_from_forgery


  def after_sign_up_path_for(resource)
    new_profiles_path
  end

  def after_sign_in_path_for(resource)
    current_user.attendences.create!(login_time: Time.now.strftime("at %H:%M%p"), login_date: Date.today )
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    user = Attendence.find_by_user_id(current_user.id)
    user.update_attributes(logout_time: Time.now.strftime("at %H:%M%p"))
    root_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

end
