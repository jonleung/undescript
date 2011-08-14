require 'simple-rss'
require 'open-uri'

class RssSlide < ActiveRecord::Base
  
  inherits_from :slide

  def run
    rss = SimpleRSS.parse open(rss_url)

    {'title' => rss.channel.title, "suheadings" => {'item0' => rss.items[0].title, 'item1' => rss.items[1].title, 'item2' => rss.items[2].title, 'item3' => rss.items[3].title, 'item4' => rss.items[4].title}}
    
  end
  
end
