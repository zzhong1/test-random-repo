class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :firstname, :lastname) }
	devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :remember_me) }
  end
  
 decent_configuration do
	strategy DecentExposure::StrongParametersStrategy
 end
 
 protect_from_forgery with: :exception
end
