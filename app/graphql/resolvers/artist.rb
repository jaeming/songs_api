module Resolvers
  class Artist < ::Resolvers::BaseResolver
    type Types::Artists::ArtistType, null: false

    argument :id, Int, required: true

    def resolve(id:)
      ::Artist.find(id)
    end
  end
end
