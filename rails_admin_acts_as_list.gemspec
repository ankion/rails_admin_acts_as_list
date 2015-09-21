$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_acts_as_list/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_acts_as_list"
  s.version     = RailsAdminActsAsList::VERSION
  s.authors     = ["ankion"]
  s.email       = ["ankion@gmail.com"]
  s.homepage    = "https://github.com/ankion/rails_admin_acts_as_list"
  s.summary     = "Rails Admin plugin to sorting records"
  s.description = "Rails Admin custom action to sorting records"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '>= 3.2'
  s.add_dependency 'rails_admin', '>= 0.4'
  s.add_dependency 'acts_as_list', '>= 0.7'
end
