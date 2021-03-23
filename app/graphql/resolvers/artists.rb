module Resolvers
  class Artists < ::Resolvers::BaseResolver
    type [Types::Artists::ArtistType], null: false

    def resolve
      ::Artist.all
    end
  end
end
