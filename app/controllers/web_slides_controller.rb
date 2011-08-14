class WebSlidesController < ApplicationController
  # GET /web_slides
  # GET /web_slides.xml
  def index
    @web_slides = WebSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @web_slides }
    end
  end

  # GET /web_slides/1
  # GET /web_slides/1.xml
  def show
    @web_slide = WebSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @web_slide }
    end
  end

  # GET /web_slides/new
  # GET /web_slides/new.xml
  def new
    @web_slide = WebSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @web_slide }
    end
  end

  # GET /web_slides/1/edit
  def edit
    @web_slide = WebSlide.find(params[:id])
  end

  # POST /web_slides
  # POST /web_slides.xml
  def create
    @web_slide = WebSlide.new(params[:web_slide])

    respond_to do |format|
      if @web_slide.save
        format.html { redirect_to(@web_slide, :notice => 'Web slide was successfully created.') }
        format.xml  { render :xml => @web_slide, :status => :created, :location => @web_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @web_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /web_slides/1
  # PUT /web_slides/1.xml
  def update
    @web_slide = WebSlide.find(params[:id])

    respond_to do |format|
      if @web_slide.update_attributes(params[:web_slide])
        format.html { redirect_to(@web_slide, :notice => 'Web slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @web_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /web_slides/1
  # DELETE /web_slides/1.xml
  def destroy
    @web_slide = WebSlide.find(params[:id])
    @web_slide.destroy

    respond_to do |format|
      format.html { redirect_to(web_slides_url) }
      format.xml  { head :ok }
    end
  end
end
