module Blocky
  # A block of HTML content that can be rendered on one or multiple pages.
  class ContentBlock < ActiveRecord::Base
    # Validations
    validates :content_key, presence: true

    # Callbacks
    before_save :tidy_content

    # Clean up the HTML content using Tidy
    # @see https://bitbucket.org/carldouglas/tidy
    def tidy_content
      tidy = Tidy.new(
        char_encoding:  "raw",
        doctype:        "omit",
        indent:         "auto",
        indent_spaces:  2,
        markup:         true,
        output_xhtml:   true,
        show_body_only: "yes",
        tab_size:       2,
        tidy_mark:      false
      )
      html = tidy.clean(self.content.to_s.strip).force_encoding("utf-8")
      self.content = "\n" + (html.blank? ? "<p><br/></p>" : html) + "\n"
    end
  end
end
