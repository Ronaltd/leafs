class ApplicationController < ActionController::Base
  include LeafCalculator
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :calculate_leafs, if: :devise_controller?
  before_action :fetch_leafs
  # helper_method :leafs

  # def leafs
  #   @leafs = Leaf.includes(:items)
  # end

  private

  # def calculate_leafs
  #   return unless current_user


  #   leafs = current_user.leafs.where(accepted: true).reduce(0) do |result, leaf|
  #     leaf.credit + result
  #   end

  #   baskets = current_user.baskets.reduce(0) do |result, basket|
  #     basket.debit + result
  #   end

  #   session[:user_leaf] = leafs - baskets
  # end

  def fetch_leafs
    @user_leafs = session[:user_leaf] if session[:user_leaf]
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :address, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :address, :photo])
  end
end
