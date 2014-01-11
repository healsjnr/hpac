require 'rubygems'
require 'sinatra/base'
require 'haml'

class HpacApp < Sinatra::Base

  get '/' do
    haml :app, { :layout => :layout }
  end

end
