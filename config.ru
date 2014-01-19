require 'rubygems'
require 'sinatra/base'

require './lib/controllers/hpac_app.rb'
Dir.glob('./lib/{models,helpers,controllers}/*.rb').each { |f| require f}

map('/') {run WebsiteController}
map('/admin') {run AdminController}
