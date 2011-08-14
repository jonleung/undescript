class VideoSlidesController < ApplicationController
  # GET /video_slides
  # GET /video_slides.xml
  def index
    @video_slides = VideoSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @video_slides }
    end
  end

  # GET /video_slides/1
  # GET /video_slides/1.xml
  def show
    @video_slide = VideoSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video_slide }
    end
  end

  # GET /video_slides/new
  # GET /video_slides/new.xml
  def new
    @video_slide = VideoSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video_slide }
    end
  end

  # GET /video_slides/1/edit
  def edit
    @video_slide = VideoSlide.find(params[:id])
  end

  # POST /video_slides
  # POST /video_slides.xml
  def create
    @video_slide = VideoSlide.new(params[:video_slide])

    respond_to do |format|
      if @video_slide.save
        format.html { redirect_to(@video_slide, :notice => 'Video slide was successfully created.') }
        format.xml  { render :xml => @video_slide, :status => :created, :location => @video_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /video_slides/1
  # PUT /video_slides/1.xml
  def update
    @video_slide = VideoSlide.find(params[:id])

    respond_to do |format|
      if @video_slide.update_attributes(params[:video_slide])
        format.html { redirect_to(@video_slide, :notice => 'Video slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /video_slides/1
  # DELETE /video_slides/1.xml
  def destroy
    @video_slide = VideoSlide.find(params[:id])
    @video_slide.destroy

    respond_to do |format|
      format.html { redirect_to(video_slides_url) }
      format.xml  { head :ok }
    end
  end
end
