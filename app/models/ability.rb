class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
       if user.role=='super_user'
         can :manage, :all
       else user.role == 'tab_user'
         can :manage, Servey
         can :manage, CoApplicantServey
         can :manage, WorkServey
         can :manage, CoApplicantWorkDetail
         cannot :index, Profile
       end
  end
end
