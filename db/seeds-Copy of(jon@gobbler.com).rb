# SLIDESHOW
slideshow = Slideshow.new
slideshow.name = "psw"
slideshow.slide_order_hash = {}
slideshow.save

# Philly Startup Weekend
s = TextSlide.new
s.slideshow_id = slideshow.id
s.title = "Welcome To"
s.html = "Philly Startup Weekend!"
s.duration = 4
s.save

#Tweet
s = TextSlide.new
s.slideshow_id = slideshow.id
s.title = 'Tweet #phillystartupweekend'
s.html = ''
s.duration = 4
s.save

#Foursquare
s = TextSlide.new
s.slideshow_id = slideshow.id
s.title = 'Foursquare Checkin'
s.html = 'phillystartupweekend'
s.duration = 4
s.save

#Wifi


puts 'SEEDED'
