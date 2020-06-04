# application environment, name after application 

require 'bundler/setup'
Bundler.require(:default)

require_relative './got_cli/cli.rb'
require_relative './got_cli/api.rb'
require_relative './got_cli/houses.rb'

