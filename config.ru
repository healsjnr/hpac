require 'rubygems'
require 'sinatra/base'

Dir.glob('./lib/{models,helpers,controllers}/*.rb').each { |f| require f}

map('/') {run WebsiteController}
