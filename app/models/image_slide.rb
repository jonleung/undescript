# require 'rubygems'
# require 'imgur'

class ImageSlide < ActiveRecord::Base
  inherits_from :slide

  def run
    return image_url
    # api_key = "1dcdf80fee0df552a19d255e1fd06c6a"
    # imgur = Imgur::API.new(api_key)
    # return imgur.upload_from_url(image_url)
    # if is_url
    #   return imgur.upload_from_url(path)["original_image"]
    # else
    #   return imgur.upload_file(path)["original_image"]
    # end
  end
end
