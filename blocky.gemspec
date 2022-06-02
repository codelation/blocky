$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blocky/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blocky"
  s.version     = Blocky::VERSION
  s.authors     = ["Brian Pattison"]
  s.email       = ["brian@brianpattison.com"]
  s.homepage    = "https://github.com/codelation/blocky"
  s.summary     = "Simple content blocks for Rails apps."
  s.description = "Blocky gives you the ability add editable content blocks to any template with a single view helper."
  s.licenses    = ["MIT"]

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.0"
  s.add_development_dependency "rake"
end
