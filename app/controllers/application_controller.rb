class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :calculate_leafs
  before_action :get_leafs
  # helper_method :leafs

  # def leafs
  #   @leafs = Leaf.includes(:items)
  # end

  private

  def calculate_leafs
    session[:user_leaf] = current_user.leafs.where(accepted:true).reduce(0) { |result, leaf| leaf.credit + result } if current_user
  end

  def get_leafs
    @user_leafs = session[:user_leaf] if session[:user_leaf]
    # on navbar
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :address, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :address, :photo])
  end
end
