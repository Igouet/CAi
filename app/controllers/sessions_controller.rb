# encoding: UTF-8
class SessionsController < ApplicationController
  
  def new
    @title = "Conectarse"
  end
  
  def create
    ingeniero = Ingeniero.authenticate(params[:session][:email], params[:session][:password])

    if ingeniero.nil?
      flash.now[:error] = "Combinación correo/contraseña inválida."
      @title = "Conectarse"
      render 'new'
    else
      sign_in ingeniero
      redirect_back_or ingeniero
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
  
end
