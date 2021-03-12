module Types
  class QueryType < BaseTypes::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :posts, resolver: Resolvers::Posts, description: 'A list of Posts'

  end
end
