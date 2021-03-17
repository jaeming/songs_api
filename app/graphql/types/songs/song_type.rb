module Types
  module Songs
    class SongType < Types::BaseTypes::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :lyrics, String, null: true
      field :description, String, null: true
      field :artist, String, null: true
      field :album, String, null: true
      field :cover, String, null: true
      field :duration, Int, null: true
      field :formatted_duration, String, null: true
      field :year, Integer, null: true
      field :published, Boolean, null: true
    
      def formatted_duration
        Time.at(object.duration).utc.strftime("%M:%S")
      end
    end
  end
end
