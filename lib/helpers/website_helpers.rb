module WebsiteHelpers
  def render_text(page, content_id, type = :body)
    data = Content.where(:page => page, :content_id => content_id).first
    return nil if data.nil?
    type == :body ? data.content : data.title
  end
end

