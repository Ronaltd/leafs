class ChangeDebitToBeIntegerInBaskets < ActiveRecord::Migration[6.0]
  def change
    change_column :baskets, :debit, :integer, using: 'debit::integer'
  end
end
