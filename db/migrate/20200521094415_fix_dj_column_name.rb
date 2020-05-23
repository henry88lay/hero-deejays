class FixDjColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :djs, :dj_image, :image
  end
end
