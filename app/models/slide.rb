class Slide < ActiveRecord::Base
  
  belongs_to :slideshow
  acts_as_superclass
  
  after_save :add_to_slideshow_hash
  
  def add_to_slideshow_hash
    
    slideshow = Slideshow.find(slideshow_id)
    hash = slideshow.slide_order_hash
    
    if hash.empty?
      hash[1] = id
    else
      max = 0
      hash.each_key do |key|
        if key > max
          max = key
        end
      end
      hash[max+1] = id
    end
    slideshow.save
  end
  
end
