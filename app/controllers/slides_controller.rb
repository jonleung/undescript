class SlidesController < ApplicationController
  # GET /slides
  # GET /slides.xml
  def index
    @slides = Slide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slides }
    end
  end

  # GET /slides/1
  # GET /slides/1.xml
  def show
    @slide = Slide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slide }
    end
  end

  # GET /slides/new
  # GET /slides/new.xml
  def new
    @slideshow = Slideshow.find(params[:slideshow_id])
    
    debugger
    
    if @slideshow.slide_order_hash.present?
      @first_slide = Slide.find(@slideshow.slide_order_hash[1])
      @first_slide = @first_slide.slide
    else
      @first_slide = nil
    end
      
    @slide = @slideshow.slides.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slide }
    end
  end

  # GET /slides/1/edit
  def edit
    @slide = Slide.find(params[:id])
  end

  # POST /slides
  # POST /slides.xml
  def create
    
    slideshow_id = params[:slideshow_id]
    slideshow = Slideshow.find(slideshow_id)
    
    type = params[:slide][:type]
    title = params[:slide][:title]
    duration = params[:slide][:duration]
    text = params[:text]
    
    if type == "text"
      @slide = TextSlide.new
      @slide.html = text
    elsif type == "image"
      @slide = ImageSlide.new
      @slide.image_url = text
    elsif type == "video"
      @slide = VideoSlide.new
      @slide.video_url = text
    elsif type == "rss"
      @slide = RssSlide.new
      @slide.rss_url = text
    elsif type == "analytics"
      LOG.info("ERROR\tthere is nothing in analytics yet error")
    else
      LOG.info("ERROR\tNEW SLIDE does not fit in a type")
    end
    
    @slide.title = title
    @slide.duration = duration
    @slide.slideshow_id = slideshow_id
    
    respond_to do |format|
      if @slide.save
        format.html { redirect_to :back}#(@slide, :notice => 'Slide was successfully created.') }
        format.xml  { render :xml => @slide, :status => :created, :location => @slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slides/1
  # PUT /slides/1.xml
  def update
    @slide = Slide.find(params[:id])

    respond_to do |format|
      if @slide.update_attributes(params[:slide])
        format.html { redirect_to(@slide, :notice => 'Slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.xml
  def destroy
    @slide = Slide.find(params[:id])
    @slide.destroy

    respond_to do |format|
      format.html { redirect_to(slides_url) }
      format.xml  { head :ok }
    end
  end
end
