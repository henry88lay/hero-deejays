class AddImageToDj < ActiveRecord::Migration[6.0]
  def change
    add_column :djs, :dj_image, :string
  end
end
