class ImageSlidesController < ApplicationController
  # GET /image_slides
  # GET /image_slides.xml
  def index
    @image_slides = ImageSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_slides }
    end
  end

  # GET /image_slides/1
  # GET /image_slides/1.xml
  def show
    @image_slide = ImageSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_slide }
    end
  end

  # GET /image_slides/new
  # GET /image_slides/new.xml
  def new
    @image_slide = ImageSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_slide }
    end
  end

  # GET /image_slides/1/edit
  def edit
    @image_slide = ImageSlide.find(params[:id])
  end

  # POST /image_slides
  # POST /image_slides.xml
  def create
    @image_slide = ImageSlide.new(params[:image_slide])

    respond_to do |format|
      if @image_slide.save
        format.html { redirect_to(@image_slide, :notice => 'Image slide was successfully created.') }
        format.xml  { render :xml => @image_slide, :status => :created, :location => @image_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_slides/1
  # PUT /image_slides/1.xml
  def update
    @image_slide = ImageSlide.find(params[:id])

    respond_to do |format|
      if @image_slide.update_attributes(params[:image_slide])
        format.html { redirect_to(@image_slide, :notice => 'Image slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_slides/1
  # DELETE /image_slides/1.xml
  def destroy
    @image_slide = ImageSlide.find(params[:id])
    @image_slide.destroy

    respond_to do |format|
      format.html { redirect_to(image_slides_url) }
      format.xml  { head :ok }
    end
  end
end
