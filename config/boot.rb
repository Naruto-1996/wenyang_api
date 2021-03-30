require 'rubygems'
require 'active_record'
require 'bundler/setup'

yaml_configurations = YAML::load(File.open('config/application.yml'))
yaml_configurations[ENV['PUMA_ENV']].select{|key, value| ENV[key] = value}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details[ENV['PUMA_ENV']])
