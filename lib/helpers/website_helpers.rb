
module WebsiteHelpers
  def render_text(text)
    case text
    when :about_text
      Content.where(:page => 'main', :title => 'About?').first.content
    when :where_text
      Content.where(:page => 'main', :title => 'Where?').first.content
    when :when_text
      Content.where(:page => 'main', :title => 'When?').first.content
    when :who_text
      Content.where(:page => 'main', :title => 'Who?').first.content
    else 
      ''
    end
  end
end

