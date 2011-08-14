module VideoSlidesHelper
  def video_url(url)
    youtube_id = /v=(.*)&/.match(url)
    "<iframe width='425' height='349' src='http://www.youtube.com/embed/#{youtube_id}' frameborder='0' allowfullscreen></iframe>"
  end
end
