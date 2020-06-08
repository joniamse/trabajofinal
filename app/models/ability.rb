#frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(account)
    # Define abilities for the passed in user here. For example:
    #
    account ||= Account.new # guest user (not logged in)
    if account.id == 1
        can :manage, :all
    end


    if account.admin?
        can :manage, Product
        #can :manage, Category
    else
        can :show, Product
        can :store, Product
        can :create, Account
        can :read, Account, :id => account.id
        can :update, Account, :id => account.id
    end

  end 
end
