class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :discount
      t.string :code
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
