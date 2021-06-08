class AddFieldToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :leafs_balance, :integer
  end
end
