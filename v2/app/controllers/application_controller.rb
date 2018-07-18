class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action 
  
  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:idUsuario, :logiUsuario, :nomUsuario, :apeUsuario, :numDni, :numCelular, :imgUsuario, :email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:idUsuario, :logiUsuario, :nomUsuario, :apeUsuario, :numDni, :numCelular, :imgUsuario, :email, :password, :remember_me])
  end
  
  
end
