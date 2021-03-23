module Resolvers
  class Album < ::Resolvers::BaseResolver
    type Types::Albums::AlbumType, null: false

    argument :id, Int, required: true

    def resolve(id:)
      ::Album.find(id)
    end
  end
end
