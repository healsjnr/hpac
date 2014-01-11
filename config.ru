require "rubygems"
require "sinatra"

require "#{File.expand_path(File.dirname(__FILE__))}/lib/hpac_app.rb"

run HpacApp
