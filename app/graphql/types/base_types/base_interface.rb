module Types
  module BaseTypes
    module BaseInterface
      include GraphQL::Schema::Interface
      edge_type_class(Types::BaseTypes::BaseEdge)
      connection_type_class(Types::BaseTypes::BaseConnection)

      field_class Types::BaseTypes::BaseField
    end
  end
end
