module Types
  module BaseTypes
    class BaseInputObject < GraphQL::Schema::InputObject
      argument_class Types::BaseTypes::BaseArgument
    end
  end
end
