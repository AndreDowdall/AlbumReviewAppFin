class AddAlbumCoverToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :album_cover, :string
  end
end
