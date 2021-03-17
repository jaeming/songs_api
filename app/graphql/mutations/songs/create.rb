module Mutations
  module Songs
    class Create < Mutations::BaseMutation
      argument :attributes, Types::Inputs::SongAttributes, required: true

      field :node, Types::Songs::SongType, null: true
      field :errors, [String], null: true

      def resolve(attributes:)
        respond_with Song.create(attributes.to_h)
      end
    end
  end
end