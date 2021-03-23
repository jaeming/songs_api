module Types
  module Songs
    class SongType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :lyrics, String, null: true
      field :description, String, null: true
      field :cover, String, null: true
      field :duration, Int, null: true
      field :formatted_duration, String, null: true
      field :year, Integer, null: true
      field :published, Boolean, null: true
      field :album_track, Int, null: true
      field :artist, Types::Artists::ArtistType, null: true
      field :album, Types::Albums::AlbumType, null: true      
    
      def formatted_duration
        Time.at(object.duration).utc.strftime("%M:%S") if object.duration.present?
      end
    end
  end
end
