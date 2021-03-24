module Types
  module Artists
    class ArtistType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :albums, [Types::Albums::AlbumType], null: false
      field :songs, [Types::Songs::SongType], null: false

      def albums
        Loaders::AssociationLoader.for(object.class, :albums).load(object)
      end

      def songs
        Loaders::AssociationLoader.for(object.class, :songs).load(object)
      end
    end
  end
end
