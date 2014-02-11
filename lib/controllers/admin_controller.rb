class HpacAppController < Sinatra::Application 
  
  helpers AdminHelpers

  configure do
    set :base_url, 'admin'
    set :pages, Content.all
    puts 'Adding Admin content routes:'
    pages.each do |p|
      url = "/#{base_url}/#{p.page.downcase}/#{p.content_id.to_s}"
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
    puts '  Admin routes added.'
  end

  get "/#{base_url}" do
    @contents = Content.order(:page => :asc, :title => :asc)
    haml :admin, { :layout => :layout }
  end
end
