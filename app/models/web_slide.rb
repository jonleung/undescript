class WebSlide < ActiveRecord::Base
  
  inherits_from :slide
  
end

# == Schema Information
#
# Table name: web_slides
#
#  slide_id   :integer         not null, primary key
#  site_url   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

