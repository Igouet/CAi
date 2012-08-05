class EventosController < ApplicationController
  def new
    @evento = Evento.new
    @title = "CAi"
    @actual = "CAi"
  end

  def create
    @evento = Evento.new(params[:evento])
    if @evento.save
      flash[:success] =  "La actividad fue creada."
      redirect_to eventos_path
    else
      @title = "Crear nueva actividad"
      render 'new'
    end
  end

  def show
    @evento = Evento.find(params[:id])
    @title = "Actividad"
    @actual = "CAi"
  end

  def edit
    @title = "Noticias"
    @submenu = "Noticias"
    @actual = "Editar"
    @evento = Evento.find(params[:id])
  end

  def destroy
    Evento.find(params[:id]).destroy
    flash[:success] = "Actividad eliminada."
    redirect_to eventos_path
  end

  def index
    @eventos = Evento.all
    @actual = "CAi"
  end

  def update
    @evento = Evento.find(params[:id])

    respond_to do |format|
      if @evento.update_attributes(params[:evento])
        format.html { redirect_to eventos_path, :notice => 'El evento fue modificado.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @evento.errors, :status => :unprocessable_entity }
      end
    end
  end

end
