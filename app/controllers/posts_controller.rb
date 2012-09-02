# encoding: UTF-8
class PostsController < ApplicationController
  include PostsHelper
  before_filter :submenu
  def new
    @post = Post.new
    @title = "Noticias"
    @actual = "Publicar"
  end
  
  def create
    @post = Post.new(params[:post])
    @post.cantidad_comentarios = 0
    @post.ingeniero_id = current_ingeniero.id
    if @post.save
      flash[:success] =  "La noticia fue publicada."
      redirect_to posts_path
    else
      @title = "Publicar nueva noticia"
      render 'new'
    end
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
      flash[:success] = "Noticia actualizada."
      redirect_to posts_path
    else
      @title = "Editar noticia"
      render 'edit'
    end
  end
  
  def show
    @post = Post.find(params[:id])
    @title = @post.titulo
    @ingeniero = Ingeniero.find(@post.ingeniero_id)
    @actual = "Post"
  end
  
  def index
    @title = "Noticias"
    @actual = "Noticias"
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @posts }
    end
  end
  
  def indice
    @posts = Post.all
    @actual = "Noticias"
  end

  def caitv
    @actual = "CAi TV"
    @noticias = noticias_caitv
  end

  def impulso
    @actual = "Impulso"
    @noticias = noticias_impulso
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Noticia eliminada."
    redirect_to posts_path
  end
  
  private
  
    def submenu
      @submenu = 'noticias'
    end

end
