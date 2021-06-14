class BasketsController < ApplicationController
 
  def index
    @baskets = current_user.baskets
    @coupons = @baskets.map {|basket| basket.coupon}
    @companies = Company.all

  end

  def create
    @basket = Basket.new
    @basket.user = current_user
    @basket.coupon = Coupon.find(params[:coupon_id])
    if @basket.user.leafs_balance >= @basket.coupon.leafs_value
      @basket.debit = @basket.coupon.leafs_value
    else
      render 'coupon/index', notice: 'Saldo insuficiente'
    end
      
    if @basket.save
      balance = @basket.user.leafs_balance - @basket.debit
      @basket.user.update(leafs_balance: balance ) 
      redirect_to baskets_path, notice: 'Cupom adquirido com sucesso.'
    else
      render 'coupon/index', notice: 'Operação não concluída. Tente novamente'
    end

  end
end
 