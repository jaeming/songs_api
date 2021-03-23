module Types
  module Albums
    class AlbumType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :year, Int, null: true
      field :songs, [Types::Songs::SongType], null: false
      field :artist, Types::Artists::ArtistType, null: false
    end
  end
end
