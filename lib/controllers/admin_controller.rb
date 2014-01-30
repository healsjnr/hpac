class AdminController < HpacAppController
  
  helpers AdminHelpers

  configure do
    set :pages, Content.all
    puts "Adding content routes:"
    # Add a get route for piece of content contained in that database 
    pages.each do |p|
      url = "/#{p.page.downcase}/#{p.content_id.to_s}"
      self.get(url, {}) do
        p.reload
        p.to_json 
      end
      puts "  GET #{url} created."
      self.post(url, {}) do 
        save_content p, params[:content] 
      end
      puts "  POST #{url} created."
    end
  end
  
  get '/' do
    @contents = Content.order(:page => :asc, :title => :asc)
    haml :admin, { :layout => :layout }
  end
end
