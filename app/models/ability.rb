class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    alias_action :create, :read, :update, :destroy, to: :crud

    if user.admin?
      can :read, :all
      can :manage, :all
    else
      can :read, :all
    end
  end
end
