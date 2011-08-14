class TextSlide < ActiveRecord::Base
  
  inherits_from :slide

  def run
    return html
  end
end
