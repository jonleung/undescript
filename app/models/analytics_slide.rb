require 'rubygems'
require 'garb'
require 'googlecharts'

class AnalyticsSlide < ActiveRecord::Base

  inherits_from :slide
  
  PATH_TO_IMAGE = "../../tmp/chart.png"
  
  def connect
    pass = File.open("/Users/awbraunstein/code/pass.txt")
    password = ""
    unless pass.nil?
      password  = pass.readline.gsub(/\n/, "");
    end
    Garb::Session.login("awbraunstein@gmail.com", password)
    property =  'UA-23858586-1'
    profile = Garb::Management::Profile.all.detect {|p| p.web_property_id == property}
    return profile.exits(:filters => {:medium.eql => 'referral'})
  end

  def draw(anal)
    @title = "chart"
    @legend = []
    @data = []
    anal.each do |r|
      @legend += [r.source]
      @data += [r.pageviews.to_i]
    end
    chart = Gchart.new(:type => 'pie', :title => @title, :labels => @legend , :data => @data, :size => '700x350', :filename => PATH_TO_IMAGE)
    # Record file in filesystem
    chart.file
  end

  def run
    AnalyticsSlide.draw(AnalyticsSlide.conect)
    return PATH_TO_IMAGE
  end
  
  
end
