class WebsiteController < HpacAppController
  
  helpers WebsiteHelpers
  
  configure do
    set :pages, Content.all
    
    page_data = {}
    pages.each do |content|
      page_data[content.page] ||= {}
      page_data[content.page][content.title] = content
    end
   
    puts "Adding content routes:"
    # Add a get route for piece of content contained in that database 
    page_data.each do |page, data|
      next if page == 'main'
      url = "/#{page.downcase}"
      self.get(url, {}) do
        @content = Content.where(:page => page)
        haml :content, { :layout => :layout }
      end
      puts "  GET #{url} created."
    end
  end

  get '/main' do
    redirect '/'
  end

  get '/' do
    haml :app, { :layout => :layout }
  end
  
end

