module Types
  module BaseTypes
    class BaseUnion < GraphQL::Schema::Union
      edge_type_class(Types::BaseTypes::BaseEdge)
      connection_type_class(Types::BaseTypes::BaseConnection)
    end
  end
end
