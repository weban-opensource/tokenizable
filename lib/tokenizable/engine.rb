module Tokenizable
  class Engine < ::Rails::Engine
    isolate_namespace Tokenizable

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
