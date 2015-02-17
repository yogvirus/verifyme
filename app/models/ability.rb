class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
       if user.admin? || user.temp_admin?
         can :manage, :all
       else user.tab_user?
         can :manage, Servey
         can :manage, CoApplicantServey
         can :manage, WorkServey
         can :manage, CoApplicantWorkDetail
         cannot :index, Profile
       end
  end
end
