class RemoveArtistAndAlbumFromSong < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :artist
    remove_column :songs, :album
  end
end
