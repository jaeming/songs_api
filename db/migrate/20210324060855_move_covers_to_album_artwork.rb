class MoveCoversToAlbumArtwork < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :cover
    add_column :albums, :artwork, :string
  end
end
