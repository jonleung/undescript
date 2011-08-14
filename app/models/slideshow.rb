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
