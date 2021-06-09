class AddCoordinatesToDropoffs < ActiveRecord::Migration[6.0]
  def change
    add_column :dropoffs, :latitude, :float
    add_column :dropoffs, :longitude, :float
  end
end
