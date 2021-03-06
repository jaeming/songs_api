module Types
  class QueryType < BaseTypes::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :posts, resolver: Resolvers::Posts, description: 'All Posts'
    field :songs, resolver: Resolvers::Songs, description: 'All Songs'
    field :song, resolver: Resolvers::Song, description: 'Song'
    field :artist, resolver: Resolvers::Artist, description: 'Artists'
    field :artists, resolver: Resolvers::Artists, description: 'All Artists'
    field :album, resolver: Resolvers::Album, description: 'Album'
    field :albums, resolver: Resolvers::Albums, description: 'All Albums'
  end
end
