require 'simple-rss'
require 'open-uri'

class RssSlide < ActiveRecord::Base
  
  inherits_from :slide

  @feed_title = ""
  @feed_topics = []
  def run
    rss = SimpleRSS.parse open(rss_url)
    @feed_title = rss.channel.title
    rss.items.each do |t|
      @feed_topics += [t[:title]]
    end
    puts @feed_topics
  end

  def get_title
    @feed_title
  end
  def get_topics
    @feed_topics
  end
  
end

# == Schema Information
#
# Table name: rss_slides
#
#  slide_id   :integer         not null, primary key
#  rss_url    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

