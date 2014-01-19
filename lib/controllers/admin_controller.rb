class AdminController < HpacAppController
  
  helpers AdminHelpers
  
  get '/' do
    @contents = Content.order(:page => :asc, :title => :asc)
    haml :admin, { :layout => :layout }
  end
  
end
