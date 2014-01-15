
require 'rubygems'
require 'sass'
require 'haml'

class HpacAppController < Sinatra::Base

  set :root, File.expand_path('../..', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)
  enable :sessions, :method_override

end
