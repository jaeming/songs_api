module Types
  module Albums
    class AlbumType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :year, Int, null: true
      field :artwork, String, null: true      
      field :songs, [Types::Songs::SongType], null: false
      field :artist, Types::Artists::ArtistType, null: false

      def songs
        Loaders::AssociationLoader.for(object.class, :songs).load(object)
      end

      def artist
        Loaders::RecordLoader.for(Artist).load(object.artist_id)
      end
    end
  end
end
