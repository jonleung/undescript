class Slide < ActiveRecord::Base
  acts_as_superclass  
  belongs_to :slideshow
  after_save :add_to_slideshow_hash
  
  # validates :title, :presence => true
  # validates :subtype, :presence => true
  # validates :duration, :presence => true
  # validates :duration, :inclusion => { :in => (0...1000)}
  #validates :subtype, :exclusion => { :in => %w(please_choose)}, :message => "fuck"

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

# == Schema Information
#
# Table name: slides
#
#  id           :integer         not null, primary key
#  slideshow_id :integer
#  subtype      :string(255)
#  title        :string(255)
#  duration     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

