module Blocky
  class Ability
    include CanCan::Ability

    def initialize(user)
      can :manage, Blocky::ContentBlock
    end
  end
end
