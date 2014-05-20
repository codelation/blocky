module Blocky
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../..", __FILE__)

    def ask_questions
      @blocky_route = ask("What route should be used to manage content blocks? [/admin/content]")
      if @blocky_route.blank?
        @blocky_route = "/admin/content"
      end

      @user_class = ask("What class is used for user authentication? [User]")
      if @user_class.blank?
        @user_class = "User"
      end
    end

    def create_initializer_file
      create_file "config/initializers/blocky.rb", <<-INITIALIZER
Blocky.user_class           = "#{@user_class}"
Blocky.s3_access_key_id     = ENV["BLOCKY_S3_KEY"]
Blocky.s3_secret_access_key = ENV["BLOCKY_S3_SECRET"]
Blocky.s3_bucket            = ENV["BLOCKY_S3_BUCKET"]
INITIALIZER
    end

    def install_migrations
      rake "blocky:install:migrations"
    end

    def mount_engine
      insert_into_file(File.join("config", "routes.rb"), :after => "Application.routes.draw do\n") do <<-MOUNTENGINE
  # This line mounts Blocky's routes to the path '#{@blocky_route}'.
  # This means, any requests to '#{@blocky_route}', will go to Blocky::ContentBlocksController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  mount Blocky::Engine, at: "#{@blocky_route}"
        MOUNTENGINE
      end
    end

  end
end
