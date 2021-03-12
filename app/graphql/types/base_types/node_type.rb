module Types
  module BaseTypes
    module NodeType
      include Types::BaseTypes::BaseInterface
      # Add the `id` field
      include GraphQL::Types::Relay::NodeBehaviors
    end
  end
end
