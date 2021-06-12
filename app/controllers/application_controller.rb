class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :leafs

  def leafs
    @leafs = Leaf.all
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :address])
  end
end
