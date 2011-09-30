class TextSlide < ActiveRecord::Base
  
  inherits_from :slide

  def run
    return html
  end
end

# == Schema Information
#
# Table name: text_slides
#
#  slide_id   :integer         not null, primary key
#  html       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

