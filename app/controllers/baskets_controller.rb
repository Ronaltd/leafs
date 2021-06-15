class BasketsController < ApplicationController
  include LeafCalculator # herda do app controller, nao necessario aqui.
 
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
      redirect_to coupons_path, notice: 'Saldo insuficiente'
      return
    end
      
    if @basket.save
      calculate_leafs
      if @basket.debit
        balance = @basket.user.leafs_balance - @basket.debit
        @basket.user.update(leafs_balance: balance )
        redirect_to baskets_path, notice: 'Cupom adquirido com sucesso.'
      end

    else
      redirect_to coupons_path, notice: 'Operação não concluída. Tente novamente'
    end

  end
end
 
