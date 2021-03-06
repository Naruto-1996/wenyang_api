require 'rubygems'

ENV['PUMA_ENV'] ||= 'test'

require 'rack/test'

require File.expand_path('../config/environment', __dir__)

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation

  config.mock_with :rspec
  config.expect_with :rspec
  config.raise_errors_for_deprecations!

end
