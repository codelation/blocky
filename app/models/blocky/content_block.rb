module Blocky
  class ContentBlock < ActiveRecord::Base
    before_save :tidy_content

    scope :global,   -> { where("page_path IS NULL").order(:name) }
    scope :per_page, -> { where("page_path IS NOT NULL").order(:page_path) }

    def global?
      self.page_path.nil?
    end

    def tidy_content
      tidy = Tidy.new({
        char_encoding: "raw",
        doctype: "omit",
        indent: "auto",
        indent_spaces: 2,
        markup: true,
        output_xhtml: true,
        show_body_only: "yes",
        tab_size: 2,
        tidy_mark: false
      })
      html = tidy.clean(self.content.to_s.strip).force_encoding("utf-8")
      self.content = "\n" + (html.blank? ? "<p><br/></p>" : html) + "\n"
    end

  end
end
