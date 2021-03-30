$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['PUMA_ENV']

Dir[File.expand_path('../app/models/*.rb', __dir__)].each{ |f| require f }
Dir[File.expand_path('../lib/*.rb', __dir__)].each{ |f| require f }
Dir[File.expand_path('../api_pc/*.rb', __dir__)].each{ |f| require f }
Dir[File.expand_path('../api_mobile/*.rb', __dir__)].each{ |f| require f }

require 'ping'
require 'routes'
require 'api'
require 'exchange_app'

