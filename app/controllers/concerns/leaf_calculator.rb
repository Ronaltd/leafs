module LeafCalculator
  extend ActiveSupport::Concern

  def calculate_leafs(user=nil)

    if user
      unless user.leafs.empty?
        leafs =user.leafs.where(accepted: true).reduce(0) do |result, leaf|
          next if leaf.credit.nil?

          leaf.credit + result
        end
        leafs ||= 0
      else
        leafs = 0
      end

      unless user.baskets.empty?
        baskets = user.baskets.reduce(0) do |result, basket|
          next if basket.debit.nil?

          basket.debit + result
        end
        baskets ||= 0
      else
        baskets = 0
      end

      balance = leafs - baskets #calculo apenas quando o usuario loga, quando um leaf é aceito e quando cupom foi usado
      user.update(leafs_balance: balance)

    end
  end
end
