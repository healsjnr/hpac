class AdminController < HpacAppController
  
  helpers AdminHelpers

  configure do
    set :pages, Content.all
    puts "Adding content routes:"
    # Add a get route for piece of content contained in that database 
    pages.each do |p|
      self.get("/#{p.page.downcase}/#{p.content_id.to_s}", {}) { p.to_json }
      puts "  GET /admin/#{p.page.downcase}/#{p.content_id.to_s} created."
    end

  end
  
  get '/' do
    @contents = Content.order(:page => :asc, :title => :asc)
    haml :admin, { :layout => :layout }
  end
end
