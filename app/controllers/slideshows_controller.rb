class SlideshowsController < ApplicationController
  # GET /slideshows
  # GET /slideshows.xml
  def index
    @slideshows = Slideshow.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slideshows }
    end
  end
  
=begin
{1=>31}
{1=>31,2=>32}
=end

  # GET /slideshows/1
  # GET /slideshows/1.xml
  def show
        
    @slideshow = Slideshow.find(params[:id])
    
    if @slideshow.slide_order_hash.present?
      @first_slide = Slide.find(@slideshow.slide_order_hash[1])
    else
      @first_slide = nil
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slideshow }
    end
  end
  
  def start
    
    @slideshow = Slideshow.find(params[:id])
    first_slide = @slideshow.slide_order_hash[1]
    
    if first_slide.nil?
      redirect_to :back
      LOG.info("you don't have any slides")
      return
    end
  
    if session[:slideshow_states].nil?
      session[:slideshow_states] = []
    end
    
    session[:slideshow_states][@slideshow.id] = 1
    
    

    
    redirect_to slideshow_slide_path(@slideshow, first_slide)
    
  end

  # GET /slideshows/new
  # GET /slideshows/new.xml
  def new
    @slideshow = Slideshow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slideshow }
    end
  end

  # GET /slideshows/1/edit
  def edit
    @slideshow = Slideshow.find(params[:id])
  end

  # POST /slideshows
  # POST /slideshows.xml
  def create
    @slideshow = Slideshow.new(params[:slideshow])
    @slideshow.slide_order_hash = {}
    respond_to do |format|
      if @slideshow.save
        format.html { redirect_to(@slideshow, :notice => 'Slideshow was successfully created.') }
        format.xml  { render :xml => @slideshow, :status => :created, :location => @slideshow }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slideshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slideshows/1
  # PUT /slideshows/1.xml
  def update
    @slideshow = Slideshow.find(params[:id])

    respond_to do |format|
      if @slideshow.update_attributes(params[:slideshow])
        format.html { redirect_to(@slideshow, :notice => 'Slideshow was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slideshow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slideshows/1
  # DELETE /slideshows/1.xml
  def destroy
    @slideshow = Slideshow.find(params[:id])
    @slideshow.destroy

    respond_to do |format|
      format.html { redirect_to(slideshows_url) }
      format.xml  { head :ok }
    end
  end
end
