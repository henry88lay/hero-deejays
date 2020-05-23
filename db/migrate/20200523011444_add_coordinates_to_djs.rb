class AddCoordinatesToDjs < ActiveRecord::Migration[6.0]
  def change
    add_column :djs, :latitude, :float
    add_column :djs, :longitude, :float
  end
end
