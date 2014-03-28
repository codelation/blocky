module Blocky
  class ContentBlock < ActiveRecord::Base
    scope :global,   -> { where("controller IS NULL AND action IS NULL") }
    scope :per_page, -> { where("controller IS NOT NULL AND action IS NOT NULL") }

    def global?
      self.controller.nil? && self.action.nil?
    end

  end
end
