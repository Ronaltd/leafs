class CreateLeafs < ActiveRecord::Migration[6.0]
  def change
    create_table :leafs do |t|
      t.integer :credit
      t.string :items
      t.references :user, null: false, foreign_key: true
      t.references :dropoff, foreign_key: true

      t.timestamps
    end
  end
end
