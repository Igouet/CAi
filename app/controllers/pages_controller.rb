# encoding: UTF-8
class PagesController < ApplicationController
  before_filter :submenu
  
  def inicio
    @title = "Inicio"
    @modulo_actual = Modulo.find(1)
    @secciones = @modulo_actual.seccions
  end

  def contacto
    @title="Inicio"
    @actual = "Contacto"
  end

  def equipo
    @title="Inicio"
    @actual="Equipo"
  end

  def participa
    @title="Inicio"
    @actual="Participa"
  end
  
  def ayuda
    @title="Ayuda"
  end
  
  private
  
  def submenu
    @submenu = "inicio"
  end
  
end
