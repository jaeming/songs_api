module Resolvers
  class Song < ::Resolvers::BaseResolver
    type Types::Songs::SongType, null: true

    argument :id, Int, required: true

    def resolve(id:)
      ::Song.find(id)
    end
  end
end
