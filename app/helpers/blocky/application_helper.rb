module Blocky
  module ApplicationHelper

    def body_class
      @body_class ||= "default"
      body_class = "blocky"
      body_class += " " + controller.controller_name
      body_class += " " + controller.action_name
      body_class += " " + @body_class
      body_class
    end

    def page_title
      page = @title
      if page
        "#{page} • #{site_title}"
      else
        site_title
      end
    end

    def site_title
      "Blocky"
    end
  end
end
