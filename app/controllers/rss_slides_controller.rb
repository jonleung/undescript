class RssSlidesController < ApplicationController
  # GET /rss_slides
  # GET /rss_slides.xml
  def index
    @rss_slides = RssSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rss_slides }
    end
  end

  # GET /rss_slides/1
  # GET /rss_slides/1.xml
  def show
    @rss_slide = RssSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rss_slide }
    end
  end

  # GET /rss_slides/new
  # GET /rss_slides/new.xml
  def new
    @rss_slide = RssSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rss_slide }
    end
  end

  # GET /rss_slides/1/edit
  def edit
    @rss_slide = RssSlide.find(params[:id])
  end

  # POST /rss_slides
  # POST /rss_slides.xml
  def create
    @rss_slide = RssSlide.new(params[:rss_slide])

    respond_to do |format|
      if @rss_slide.save
        format.html { redirect_to(@rss_slide, :notice => 'Rss slide was successfully created.') }
        format.xml  { render :xml => @rss_slide, :status => :created, :location => @rss_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rss_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rss_slides/1
  # PUT /rss_slides/1.xml
  def update
    @rss_slide = RssSlide.find(params[:id])

    respond_to do |format|
      if @rss_slide.update_attributes(params[:rss_slide])
        format.html { redirect_to(@rss_slide, :notice => 'Rss slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rss_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rss_slides/1
  # DELETE /rss_slides/1.xml
  def destroy
    @rss_slide = RssSlide.find(params[:id])
    @rss_slide.destroy

    respond_to do |format|
      format.html { redirect_to(rss_slides_url) }
      format.xml  { head :ok }
    end
  end
end
