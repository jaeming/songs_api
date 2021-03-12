module Types
  module BaseTypes
    class BaseEdge < Types::BaseTypes::BaseObject
      # add `node` and `cursor` fields, as well as `node_type(...)` override
      include GraphQL::Types::Relay::EdgeBehaviors
    end
  end  
end
