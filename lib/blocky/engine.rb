module Blocky
  class Engine < ::Rails::Engine
    isolate_namespace Blocky

    # Load Rails Generators
    generators do
      require File.join(File.expand_path("../..", __FILE__), "generators", "blocky", "install_generator.rb")
    end

    # Add interface for Active Admin (Pro)
    # @see http://activeadmin.info
    # @see http://github.com/codelation/activeadmin_pro
    if defined?(ActiveAdmin)
      initializer :blocky do
        ActiveAdmin.application.load_paths.unshift File.join(File.expand_path("../..", __FILE__), "blocky", "admin")
      end
    end
  end
end
