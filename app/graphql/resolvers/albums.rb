module Resolvers
  class Albums < ::Resolvers::BaseResolver
    type [Types::Albums::AlbumType], null: false

    def resolve
      ::Album.all
    end
  end
end
