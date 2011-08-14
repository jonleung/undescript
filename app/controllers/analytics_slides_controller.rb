class AnalyticsSlidesController < ApplicationController
  # GET /analytics_slides
  # GET /analytics_slides.xml
  def index
    @analytics_slides = AnalyticsSlide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @analytics_slides }
    end
  end

  # GET /analytics_slides/1
  # GET /analytics_slides/1.xml
  def show
    @analytics_slide = AnalyticsSlide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @analytics_slide }
    end
  end

  # GET /analytics_slides/new
  # GET /analytics_slides/new.xml
  def new
    @analytics_slide = AnalyticsSlide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @analytics_slide }
    end
  end

  # GET /analytics_slides/1/edit
  def edit
    @analytics_slide = AnalyticsSlide.find(params[:id])
  end

  # POST /analytics_slides
  # POST /analytics_slides.xml
  def create
    @analytics_slide = AnalyticsSlide.new(params[:analytics_slide])

    respond_to do |format|
      if @analytics_slide.save
        format.html { redirect_to(@analytics_slide, :notice => 'Analytics slide was successfully created.') }
        format.xml  { render :xml => @analytics_slide, :status => :created, :location => @analytics_slide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @analytics_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /analytics_slides/1
  # PUT /analytics_slides/1.xml
  def update
    @analytics_slide = AnalyticsSlide.find(params[:id])

    respond_to do |format|
      if @analytics_slide.update_attributes(params[:analytics_slide])
        format.html { redirect_to(@analytics_slide, :notice => 'Analytics slide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @analytics_slide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_slides/1
  # DELETE /analytics_slides/1.xml
  def destroy
    @analytics_slide = AnalyticsSlide.find(params[:id])
    @analytics_slide.destroy

    respond_to do |format|
      format.html { redirect_to(analytics_slides_url) }
      format.xml  { head :ok }
    end
  end
end
