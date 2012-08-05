# encoding: UTF-8
class SeccionsController < ApplicationController
  def new
    @seccion = Seccion.new
    @actual = "Crear"
  end

  def show
  end

  def index
    @secciones = Seccion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @secciones }
    end
  end


  def create
    @seccion = Seccion.new(params[:seccion])
    if @seccion.save
      flash[:success] =  "La sección fue creada."
      redirect_to seccions_path
    else
      @title = "Crear seccion"
      render 'new'
    end
  end

  def destroy
    Seccion.find(params[:id]).destroy
    flash[:success] = "Seccion eliminada."
    redirect_to seccions_path
  end

end
