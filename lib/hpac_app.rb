require 'rubygems'
require 'sinatra/base'
require 'haml'

class HpacApp < Sinatra::Base
  attr_accessor :about_text, :where_text, :when_text, :who_text 
  
  get '/' do
    @about_text = 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.'
    @where_text = 'Grand Hirafu, Niseko, Hokaido Japan.'
    @when_text = 'Early January 2015.'
    @who_text = 'A list of speakers will be announced shortly.'
    haml :app, { :layout => :layout }
  end

end
