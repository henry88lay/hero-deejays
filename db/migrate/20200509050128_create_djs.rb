class CreateDjs < ActiveRecord::Migration[6.0]
  def change
    create_table :djs do |t|
      t.string :name
      t.string :address
      t.float :dj_price
      t.string :genre
      t.string :description
      t.string :email
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
