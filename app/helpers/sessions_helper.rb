# encoding: UTF-8
module SessionsHelper
  def sign_in (ingeniero)
    cookies.permanent.signed[:remember_token] = [ingeniero.id, ingeniero.salt]
    current_ingeniero = ingeniero
  end
  
  def sign_out
    cookies.delete(:remember_token)
    current_ingeniero = nil
  end
  
  def current_ingeniero=(ingeniero)
    @current_ingeniero = ingeniero
  end
  
  def current_ingeniero
    @current_ingeniero ||= ingeniero_from_remember_token
  end
  
  def signed_in?
    !current_ingeniero.nil?
  end
  
  def current_user?(ingeniero)
    ingeniero == current_ingeniero
  end
  
  def deny_access
    store_location
    redirect_to signin_path, :notice => "Porfavor conéctate para poder entrar a esta página."
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end
  
  private
  
  def ingeniero_from_remember_token
    Ingeniero.authenticate_with_salt(*remember_token)
  end
  
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  def clear_return_to
    session[:return_to] = nil
  end
end
