class TextSlidesController < ApplicationController
  # GET /text_slides
  # GET /text_slides.xml
  def index
    @text_slides = TextSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @text_slides }
    end
  end

  # GET /text_slides/1
  # GET /text_slides/1.xml
  def show
    @text_slide = TextSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @text_slide }
    end
  end

  # GET /text_slides/new
  # GET /text_slides/new.xml
  def new
    @text_slide = TextSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @text_slide }
    end
  end

  # GET /text_slides/1/edit
  def edit
    @text_slide = TextSlide.find(params[:id])
  end

  # POST /text_slides
  # POST /text_slides.xml
  def create
    @text_slide = TextSlide.new(params[:text_slide])

    respond_to do |format|
      if @text_slide.save
        format.html { redirect_to(@text_slide, :notice => 'Text slide was successfully created.') }
        format.xml  { render :xml => @text_slide, :status => :created, :location => @text_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @text_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /text_slides/1
  # PUT /text_slides/1.xml
  def update
    @text_slide = TextSlide.find(params[:id])

    respond_to do |format|
      if @text_slide.update_attributes(params[:text_slide])
        format.html { redirect_to(@text_slide, :notice => 'Text slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @text_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /text_slides/1
  # DELETE /text_slides/1.xml
  def destroy
    @text_slide = TextSlide.find(params[:id])
    @text_slide.destroy

    respond_to do |format|
      format.html { redirect_to(text_slides_url) }
      format.xml  { head :ok }
    end
  end
end
