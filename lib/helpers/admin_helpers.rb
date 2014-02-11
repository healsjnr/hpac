module AdminHelpers
  def save_content page, data
    puts "Save content: #{page.id} (#{page.content_id}): #{data.inspect}"
    page.reload
    page.title = data['title']
    page.content = data['body']
    if page.save
      puts "Record Saved."
      redirect "/#{page.page.downcase}", :notice => "Post saved successfully"
    else
      redirect '/admin', :error => "Error, unable to save"
    end
  end

  def site_content_titles content_type = :single 
    contents = Content.order(:page => :asc, :title => :asc)
    titles = {}
    contents.each do |cont|
      titles[cont.page] ||= {}
      titles[cont.page][cont.content_id] = cont.title 
    end
    if content_type == :single
      titles.delete_if { |k,v| v.length > 1 }
    else content_type == :multiple
      titles.delete_if { |k,v| v.length == 1 }
    end
    puts "content_type: #{content_type}, titles: #{titles}"
    titles
  end
end

