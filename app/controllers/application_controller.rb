class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:sur_name,:phone,:location,:user_name,:role, :email, :password, :password_confirmation,:state_id)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:sur_name,:phone,:location,:user_name,:role, :email, :current_password,:approved,:access,:state_id)}
  end
end
