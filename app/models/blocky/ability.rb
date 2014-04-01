module Blocky
  class Ability
    include CanCan::Ability

    def initialize(user)
      if user
        can :manage, Blocky::ContentBlock
      end
    end
  end
end
