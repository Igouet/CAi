# encoding: UTF-8
module ModulosHelper

  def noticias_medios
    secciones = []
    secciones << Seccion.where(["name = ?", "CAi TV"]).first.id
    secciones << Seccion.where(["name = ?", "Galería"]).first.id
    secciones << Seccion.where(["name = ?", "Impulso"]).first.id
    Post.where({:seccion_id => secciones}).order("created_at DESC").limit(6)
  end



end
