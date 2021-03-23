module Types
  module Artists
    class ArtistType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :albums, [Types::Albums::AlbumType], null: false
      field :songs, [Types::Songs::SongType], null: false
    end
  end
end
