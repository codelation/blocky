module Blocky
  class ContentBlock < ActiveRecord::Base
    before_save :tidy_content

    scope :global,   -> { where("controller IS NULL AND action IS NULL") }
    scope :per_page, -> { where("controller IS NOT NULL AND action IS NOT NULL") }

    def global?
      self.controller.nil? && self.action.nil?
    end

    def tidy_content
      tidy = Tidy.new({
        doctype: "omit",
        indent: "auto",
        indent_spaces: 2,
        markup: true,
        output_xhtml: true,
        show_body_only: "yes",
        tab_size: 2,
        tidy_mark: false
      })
      self.content = tidy.clean(self.content.strip)
    end

  end
end
