class RemoveLeafsBalanceToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :leafs_balance
  end
end
