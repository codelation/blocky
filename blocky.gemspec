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
  s.description = "Block give you the ability add editable content blocks to any template with a single view helper."
  s.licenses    = ["MIT"]

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "aws-sdk", "~> 1.40"
  s.add_dependency "cancan", "~> 1.6"
  s.add_dependency "jbuilder", "~> 2.0.7"
  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "sass-rails", "~> 4.0"
  s.add_dependency "tidy-ext", "~> 0.1"

  s.add_development_dependency "awesome_print", "~> 1.2"
  s.add_development_dependency "better_errors", "~> 1.1"
  s.add_development_dependency "binding_of_caller", "~> 0.7"
  s.add_development_dependency "capybara", "~> 2.2"
  s.add_development_dependency "database_cleaner", "~> 1.2"
  s.add_development_dependency "dotenv-rails", "~> 0.10"
  s.add_development_dependency "factory_girl_rails", "~> 4.4"
  s.add_development_dependency "foreman", "~> 0.63"
  s.add_development_dependency "guard", "~> 2.5"
  s.add_development_dependency "guard-rspec", "~> 4.2"
  s.add_development_dependency "puma", "~> 2.8"
  s.add_development_dependency "quiet_assets", "~> 1.0"
  s.add_development_dependency "rake"
  s.add_development_dependency "rb-fsevent", "~> 0.9"
  s.add_development_dependency "rspec-rails", "~> 2.14"
  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "terminal-notifier-guard", "~> 1.5"
end
