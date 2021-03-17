module Types
  module Inputs
    class SongAttributes < Types::BaseTypes::BaseInputObject
      argument :title, String, required: true
      argument :lyrics, String, required: false
      argument :description, String, required: false
      argument :artist, String, required: false
      argument :album, String, required: false
      argument :cover, String, required: false
      argument :duration, Int, required: false
      argument :formatted_duration, String, required: false
      argument :year, Integer, required: false
      argument :published, Boolean, required: false
    end
  end
end
