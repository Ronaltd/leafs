class CouponsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @coupons = Coupon.all
  end
end
