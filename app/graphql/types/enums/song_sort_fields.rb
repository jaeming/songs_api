module Types
  module Enums
    class SongSortFields < Types::BaseTypes::BaseEnum
      value "ARTIST", value: :artist
      value "TITLE", value: :title
      value "DURATION", value: :duration
      value "ALBUM", value: :album
      value "PUBLISHED", value: :published
    end
  end
end