class AddLeafsValueToCoupon < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :leafs_value, :integer
  end
end
