$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "messaging/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "messaging"
  s.version     = Messaging::VERSION
  s.authors     = ["Rocco Stanzione"]
  s.email       = ["trappist@gmail.com"]
  s.homepage    = "https://github.com/trappist/messaging"
  s.summary     = "Generic messaging for Rails apps"
  s.description = "Generic messaging for Rails apps. Send and receive messages among users."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
