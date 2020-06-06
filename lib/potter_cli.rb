#Application enviornment
require 'bundler/setup'
Bundler.require(:default)
require 'dotenv/load'

require_relative './potter_cli/cli.rb'
require_relative './potter_cli/api.rb'
require_relative './potter_cli/characters.rb'
