module AdminHelpers
  def content_name content
    return content.title if content.page.nil?
    "#{content.page.capitalize}: #{content.title}"
  end

  def site_content_titles
    contents = Content.order(:page => :asc, :title => :asc)
    titles = {}
    # Change to map
    contents.each do |cont|
      titles[cont.page] ||= {}
      titles[cont.page][cont.content_id] = cont.title 
    end
    titles
  end
end

