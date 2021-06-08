class AddAcceptedToLeafs < ActiveRecord::Migration[6.0]
  def change
    add_column :leafs, :accepted, :boolean, default: false, null: false
  end
end
