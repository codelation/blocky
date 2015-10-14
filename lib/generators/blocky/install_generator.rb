module Blocky
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../..", __FILE__)

    # Install the database migrations required for Blocky's content blocks
    def install_migrations
      rake "blocky:install:migrations"
    end

    # Install the content block helper into the main app's ApplicationHelper.
    def install_blocky_content_helper
      insert_into_file(File.join("app", "helpers", "application_helper.rb"), after: "module ApplicationHelper\n") do
        "include BlockyHelper"
      end
    end
  end
end
