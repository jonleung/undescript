class VideoSlide < ActiveRecord::Base
  
  inherits_from :slide
  
end

# == Schema Information
#
# Table name: video_slides
#
#  slide_id   :integer         not null, primary key
#  video_url  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

