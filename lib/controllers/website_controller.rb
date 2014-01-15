class WebsiteController < HpacAppController
  
  helpers WebsiteHelpers
  
  get '/' do
    haml :app, { :layout => :layout }
  end
  
end

