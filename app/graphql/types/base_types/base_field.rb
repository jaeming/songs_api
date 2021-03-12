module Types
  module BaseTypes
    class BaseField < GraphQL::Schema::Field
      argument_class Types::BaseTypes::BaseArgument
    end
  end
end
