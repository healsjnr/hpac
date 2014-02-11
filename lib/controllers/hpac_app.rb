$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '../..'))
require 'rubygems'
require 'sass'
require 'haml'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'json'
require 'lib/helpers/hpac_helpers.rb'

class HpacAppController < Sinatra::Application

  require 'config/environment.rb'

  set :root, File.expand_path('../..', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)
  enable :sessions, :method_override
  register Sinatra::Flash
  helpers Sinatra::RedirectWithFlash
  helpers HpacHelpers

end

require 'lib/models/init.rb'
require 'lib/helpers/init.rb'
require 'lib/controllers/init.rb'
