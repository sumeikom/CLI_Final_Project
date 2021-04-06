# frozen_string_literal: true
# require_relative "gemnames/version"

require "pry"
require "bundler"
Bundler.require

require_rel './lib'

require_relative './lib/api.rb' 
require_relative './lib/cli.rb'
require_relative './lib/anime.rb'

binding.pry