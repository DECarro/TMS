class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user (not logged in)
    can :manage, User, id: user.id
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
        if user.is_admin?
            can :access, :rails_admin
            can :dashboard
        end
    end
    
  end

