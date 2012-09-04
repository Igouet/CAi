# encoding: UTF-8
class IngenierosController < ApplicationController
  
  before_filter :authenticate, :only => [:edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :submenu
  
  def new
    @ingeniero = Ingeniero.new
    @title = "Crear cuenta"
  end

  def index
    @title = "Ingenieros"
    @users = Ingeniero.all
  end

  def show
    @ingeniero = Ingeniero.find(params[:id])
    @actual = "Perfil"
    @title = @ingeniero.name
  end
  
  def create
    @ingeniero = Ingeniero.new(params[:ingeniero])
    @ingeniero.permiso = 0
    if @ingeniero.save
      sign_in @ingeniero
      flash[:success] =  "¡Bienvenido al CAi!"
      redirect_to @ingeniero
    else
      @title = "Crear cuenta"
      render 'new'
    end
  end

  def edit
    @title = "Editar usuario"
  end
  
  def update
    @ingeniero = Ingeniero.find(params[:id])
    if @ingeniero.update_attributes(params[:ingeniero])
      flash[:success] = "Perfil actualizado."
      redirect_to @ingeniero
    else
      @title = "Editar perfil"
      render 'edit'
    end
  end
  
  def destroy
    Ingeniero.find(params[:id]).destroy
    flash[:success] = "Usuario eliminado."
    redirect_to ingenieros_path
  end
  
  private
  
    def submenu
      @submenu = "Perfil"
    end
  
    def authenticate
      deny_access unless signed_in?
    end
    
    def correct_ingeniero
      @ingeniero = Ingeniero.find(params[:id])
      redirect_to(root_path) unless current_ingeniero?(@ingeniero)
    end
    
    def admin_ingeniero
      redirect_to(root_path) unless current_ingeniero.admin?
    end
end
