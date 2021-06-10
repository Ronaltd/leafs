class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @coupons = Coupon.where(company_id: params[:id])
  end
end
