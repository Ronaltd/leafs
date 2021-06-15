module LeafCalculator
  extend ActiveSupport::Concern

  def calculate_leafs
    return unless current_user

    unless current_user.leafs.empty?
      leafs = current_user.leafs.where(accepted: true).reduce(0) do |result, leaf|
        next if leaf.credit.nil?

        leaf.credit + result
      end
      leafs ||= 0
    else
      leafs = 0
    end

    unless current_user.baskets.empty?
      baskets = current_user.baskets.reduce(0) do |result, basket|
        next if basket.debit.nil?

        basket.debit + result
      end
      baskets ||= 0
    else
      baskets = 0
    end

    session[:user_leaf] = leafs - baskets #calculo apenas quando o usuario loga, quando um leaf é aceito e quando cupom foi usado

  end
end
