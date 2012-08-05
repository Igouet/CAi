class PartidosController < ApplicationController
  def new
  end

  def show
    @partido = Partido.find(params[:id])
    @equipo_local = Equipo.find(@partido[:local_id])
    @equipo_visita = Equipo.find(@partido[:visita_id])
    @title = "#{@equipo_local.name} - #{@equipo_visita.name}"
  end

  def edit
  end
end
