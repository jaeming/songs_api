module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseTypes::BaseArgument
    field_class Types::BaseTypes::BaseField
    input_object_class Types::BaseTypes::BaseInputObject
    object_class Types::BaseTypes::BaseObject

    def respond_with(object)
      return { errors: object.errors.full_messages } if object.errors.any?

      { node: object }
    end
  end
end
