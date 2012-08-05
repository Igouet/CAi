# encoding: UTF-8
class AlbumsController < ApplicationController
  before_filter :submenu
  def new
    @album = Album.new
    @Actual = 'Album'
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:success] =  "El album fue creado."
      redirect_to albums_path
    else
      @title = "Publicar nuevo album"
      render 'new'
    end
  end

  def show
  end

  def edit
  end
  
  def index
    @title  = "Galería de fotos"
    @actual = "Galería"
    @albumes = Album.all
  end
  
  private
  
  def submenu
    @submenu = "Medios"
  end
  
end
