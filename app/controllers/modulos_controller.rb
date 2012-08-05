class ModulosController < ApplicationController
  include ModulosHelper

  def new
  end
  
  def inicio
    @title = 'Inicio'
    @actual = 'Inicio'
    @submenu = "Inicio"
    @noticias = Post.all(:order => "created_at DESC", :limit => 4)
  end
  
  def noticias
    @title = 'Noticias'
    @actual = 'Noticias'
    @submenu = "Noticias"
    @noticias = Post.all(:order => "created_at DESC", :limit => 4)
  end
  
  def medios
    @title = 'Medios'
    @actual = 'Medios'
    @submenu = 'Medios'
    @noticias = noticias_medios
  end
  
  def vocalias
    @title = 'Vocalias'
    @actual = 'Vocalias'
    @submenu = "vocalias"
    @vocalias = Vocalium.all
    @noticias = Post.where(:seccion_id => [1])
  end

  def actividades
    @title = "Actividades"
    @actual = "CAi"
    @submenu = "Actividades"
  end

  def show
    @modulo = Modulo.find(params[:id])
    @title = @modulo.name
    @seccions = @modulo.seccions
    if @modulo.id == 1 || @modulo.id == 4
      @noticias = Post.all
    end
  end

  def areas
    @title = "Areas"
    @submenu = "Areas"
    @categories = Category.all
  end

  def portales

  end

  def servicios
    @title = "Servicios"
    @actual = "Servicios"
    @submenu = "Servicios"
  end
  
end
