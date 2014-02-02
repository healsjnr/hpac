module HpacHelpers 
  def site_content_titles content_type = :single 
    puts "site_conent_titles called"
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

