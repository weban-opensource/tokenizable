require_relative "lib/tokenizable/version"

Gem::Specification.new do |spec|
  spec.name        = "tokenizable"
  spec.version     = Tokenizable::VERSION
  spec.authors     = ["Artur Kremens"]
  spec.email       = ["artur.kremens@gmail.com"]
  spec.homepage    = "http://www.weban.pl"
  spec.summary     = "BLABLABLA"
  spec.description = "BLABLABLA"
  spec.license     = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3"
  spec.add_development_dependency 'rspec-rails'
  spec.add_dependency 'jwt'
end
