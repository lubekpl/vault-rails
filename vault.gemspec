$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vault/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "vault-rails"
  s.version     = Vault::Rails::VERSION
  s.authors     = ["Seth Vargo"]
  s.email       = ["sethvargo@gmail.com"]
  s.homepage    = "https://github.com/hashicorp/vault-rails"
  s.summary     = "Official Vault plugin for Rails"
  s.description = s.summary
  s.license     = "MPLv3"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "5.0.0.beta3"
  s.add_dependency "vault", "~> 0.2"

  s.add_development_dependency "bundler"
  s.add_development_dependency "pry"
  s.add_development_dependency "rake",    "11.1.1"
  s.add_development_dependency "rspec",   "3.5.0.beta2"
  s.add_development_dependency "sqlite3"
end
