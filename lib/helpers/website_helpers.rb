
module WebsiteHelpers
  def render_text(page, content_id)
    puts "conent_id: #{content_id} page: #{page}"
    Content.where(:page => page, :content_id => content_id).first.content
  end
end

