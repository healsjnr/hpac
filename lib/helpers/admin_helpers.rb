module AdminHelpers
  def content_name content
    return content.title if content.page.nil?
    "#{content.page.capitalize}: #{content.title}"
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
    titles
  end
end

