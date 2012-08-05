# encoding: UTF-8
module ApplicationHelper
  
  def title
    base_title = "CAi"
    if @title.nil?
      base_title
    else
      "#{base_title}  #{@title}" 
    end
  end

  def buscar_posts_populares
    @populares = Post.order( "cantidad_comentarios DESC").limit(3)
  end

  def listar_modulos
    @modulos = Modulo.all
  end
  
  def listar_secciones
    @secciones = Seccion.all
  end

  def buscar_proximos_eventos
    @proximas_actividades = Evento.where("termino > :actual", {:actual=> DateTime.now}).order("fecha ASC").limit(5)
    @dias = []
    @proximas_actividades.each do |a|
      @dias<<a.fecha if a.fecha>DateTime.now
      @dias<<a.termino if a.termino>DateTime.now
    end
    @dias.sort! {|a,b| a <=> b}


  end
  
  def nombre_modulo
    if @modulo.nil?
      "CAi"
    else
      @modulo.name
    end
  end
  
end
