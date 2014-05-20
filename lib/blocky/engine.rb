module Blocky
  class Engine < ::Rails::Engine
    isolate_namespace Blocky

    # Precompile Blocky Assets
    initializer "blocky.assets.precompile" do |app|
      app.config.assets.precompile += %w(
        blocky/application.css blocky/application.js
        blocky/fontawesome-webfont.eot blocky/fontawesome-webfont.svg
        blocky/fontawesome-webfont.ttf blocky/fontawesome-webfont.woff
      )
    end

    # Load Rails Generators
    generators do
      require File.join(File.expand_path("../..", __FILE__), "generators", "blocky", "install_generator.rb")
    end
  end
end
