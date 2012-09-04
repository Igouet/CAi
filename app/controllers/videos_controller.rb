class VideosController < ApplicationController
  def index
    seccion = Seccion.where(["name = ?", "CAi TV"]).first.id
    @posts = Post.where(["seccion_id = ?", seccion])
  end

  def new
    @post = Post.new
    @title = "Noticias"
    @actual = "Publicar"
  end

  def create
    @post = Post.new(params[:post])
    @post.ingeniero_id = current_ingeniero.id
    @post.cantidad_comentarios = 0
    if @post.save
      flash[:success] =  "El video fue publicado."
      redirect_to posts_path
    else
      @title = "Publicar nuevo video"
      render 'new'
    end
  end


  def show
  end



  def destroy
  end

  def edit
    @title = "Noticias"
    @submenu = "Noticias"
    @actual = "Editar"
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = "Impulso actualizado."
      redirect_to posts_path
    else
      @title = "Editar impulso"
      render 'edit'
    end
  end
end
