require 'rubygems'
require 'sinatra/base'

require './lib/controllers/hpac_app.rb'

map('/') {run HpacAppController}
