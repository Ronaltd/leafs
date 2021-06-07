class CreateDropoffs < ActiveRecord::Migration[6.0]
  def change
    create_table :dropoffs do |t|
      t.string :name
      t.string :address
      t.string :opening_hours

      t.timestamps
    end
  end
end
