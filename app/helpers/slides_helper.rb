module SlidesHelper
  
  def render_subtype_partial(slide_subtype)
    if slide_subtype.class == TextSlide
      return 'text_slide'
    elsif slide_subtype.class == ImageSlide
      return 'image_slide'
    elsif slide_subtype.class == VideoSlide
      return 'video_slide'
    elsif slide_subtype.class == RssSlide
      return 'rss_slide'
    elsif slide_subtype.class == WebSlide
      return 'web_slide'
    elsif slide_subtype.class == AnalyticsSlide
      return 'analytics_slide'
    end
  end

  def video_url2(url)
    youtube_id = /.*?v=(.*)&/.match(url)[1]
  end
end

