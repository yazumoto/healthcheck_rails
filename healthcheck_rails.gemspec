$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "healthcheck_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "healthcheck_rails"
  s.version     = HealthcheckRails::VERSION
  s.authors     = ["Zenn"]
  s.email       = ["app.zenn@gmail.com"]
  s.homepage    = "https://github.com/seteen/healthcheck_rails"
  s.summary     = "Simple Rails Health Check Module"
  s.description = "healthcheck_rails is a simple rails plugin to let your application have healthcheck route."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.2.6"
end
