$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_view_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_view_helpers"
  s.version     = SimpleViewHelpers::VERSION
  s.authors     = ["Joshua Muheim"]
  s.email       = ["josh@example.com"]
  s.homepage    = "www.muheimwebdesign.ch"
  s.summary     = "Some useful HTML generating view helpers."
  s.description = "So far, we are excited to offer you the fieldset helper. More to come soon!"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
  s.add_development_dependency "sqlite3"
end
