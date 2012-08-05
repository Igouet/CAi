class VocaliaController < ApplicationController
  before_filter :submenu
  # GET /vocalia
  # GET /vocalia.json
  
  def noticias
    @vocalia = Vocalium.find(params[:id])
    @actual = "Vocalia"
    @noticias = Seccion.find(@vocalia.seccion_id).posts
  end
  
  def nosotros
    @vocalia = Vocalium.find(params[:id])
    @actual = "Vocalia"
  end
  
  def index
    @vocalia = Vocalium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @vocalia }
    end

  end

  # GET /vocalia/1
  # GET /vocalia/1.json
  def show
    @vocalium = Vocalium.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @vocalium }
    end
  end

  # GET /vocalia/new
  # GET /vocalia/new.json
  def new
    @vocalium = Vocalium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @vocalium }
    end
  end

  # GET /vocalia/1/edit
  def edit
    @vocalium = Vocalium.find(params[:id])
  end

  # POST /vocalia
  # POST /vocalia.json
  def create
    @vocalium = Vocalium.new(params[:vocalium])

    respond_to do |format|
      if @vocalium.save
        format.html { redirect_to @vocalium, :notice => 'Vocalium was successfully created.' }
        format.json { render :json => @vocalium, :status => :created, :location => @vocalium }
      else
        format.html { render :action => "new" }
        format.json { render :json => @vocalium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vocalia/1
  # PUT /vocalia/1.json
  def update
    @vocalium = Vocalium.find(params[:id])

    respond_to do |format|
      if @vocalium.update_attributes(params[:vocalium])
        format.html { redirect_to @vocalium, :notice => 'Vocalium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @vocalium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vocalia/1
  # DELETE /vocalia/1.json
  def destroy
    @vocalium = Vocalium.find(params[:id])
    @vocalium.destroy

    respond_to do |format|
      format.html { redirect_to vocalia_url }
      format.json { head :no_content }
    end
  end
  

  
  private
  
  def submenu
    @submenu = "vocalia"
  end
end
