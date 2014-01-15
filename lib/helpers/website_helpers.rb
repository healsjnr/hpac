
module WebsiteHelpers
  def render_text(text)
    case text
    when :about_text
     'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.'
    when :where_text
      'Grand Hirafu, Niseko, Hokaido Japan.'
    when :when_text
      'Early January 2015.'
    when :who_text
      'A list of speakers will be announced shortly.'
    else 
      ''
    end
  end
end

