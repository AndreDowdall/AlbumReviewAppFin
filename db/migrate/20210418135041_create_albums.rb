class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :band
      t.integer :year

      t.timestamps
    end
  end
end
