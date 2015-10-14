module Blocky
  class Engine < ::Rails::Engine
    isolate_namespace Blocky

    # Load Rails Generators
    generators do
      require File.join(File.expand_path("../..", __FILE__), "generators", "blocky", "install_generator.rb")
    end
  end
end
