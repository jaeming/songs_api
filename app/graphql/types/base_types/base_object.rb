module Types
  module BaseTypes
    class BaseObject < GraphQL::Schema::Object
      edge_type_class(Types::BaseTypes::BaseEdge)
      connection_type_class(Types::BaseTypes::BaseConnection)
      field_class Types::BaseTypes::BaseField
    end
  end
end
