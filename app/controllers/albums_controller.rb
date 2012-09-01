# encoding: UTF-8
class AlbumsController < ApplicationController
  before_filter :submenu
  def new
    @album = Album.new
    @actual = 'Album'
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
    @album = Album.find(params[:id])
    @fotos = @album.fotos
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:success] = "Álbum actualizado."
      redirect_to posts_path
    else
      @title = "Editar álbum"
      render 'edit'
    end
  end
  
  def index
    @title  = "Galería de fotos"
    @actual = "Galería"
    @albums = Album.all
  end

  def portada
    @albums = Album.all
  end
  
  private
  
  def submenu
    @submenu = "Medios"
  end


  
end
