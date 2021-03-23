class AddAlbumTrackToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :album_track, :integer
  end
end
