class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :leaf, null: false, foreign_key: true
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end
