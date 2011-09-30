class Slideshow < ActiveRecord::Base

#Params
  serialize :slide_order_hash

#Relationships
  has_many :slides, :dependent => :destroy

#Access
  attr_accessible :name

#Validations
  validates :name, :presence => true, :uniqueness => true
  
end

# == Schema Information
#
# Table name: slideshows
#
#  id               :integer         not null, primary key
#  name             :string(255)
#  slide_order_hash :text
#  created_at       :datetime
#  updated_at       :datetime
#

