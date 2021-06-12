class AddLeafsBalanceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :leafs_balance, :integer, default: 0
  end
end
