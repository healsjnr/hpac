
require 'rubygems'
require 'sass'
require 'haml'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'json'
require './config/environment.rb'

class HpacAppController < Sinatra::Base

  set :root, File.expand_path('../..', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)
  enable :sessions, :method_override
  register Sinatra::Flash
  helpers Sinatra::RedirectWithFlash

end
