class RemoveFieldFromLeafs < ActiveRecord::Migration[6.0]
  def change
    remove_column :leafs, :items, :string
  end
end
