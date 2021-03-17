module Resolvers
  class Posts < ::Resolvers::BaseResolver
    type [Types::Posts::PostType], null: false

    argument :let_me_in, Boolean, required: true

    def resolve(let_me_in:)
      # TODO
      [{title: 'yolo', text: 'moar'},{title: 'foo', text: 'bar'}]
    end

    def authorized?(let_me_in:)
      return true if let_me_in

      raise GraphQL::ExecutionError, "Unauthorized"
    end
  end
end
