class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.admin_role?
      can :manage, :all
      can :access, :rails_admin
      can :access, :dashboard 
      can :manage, Post
    end
    if user.event_creator_role?
      can :read, :all
      can :manage, Article, :user_id => user.id


    else
      can :read,  :all
      
    end
    
     
    
  
  end
end
