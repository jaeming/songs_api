module Types
  class MutationType < BaseTypes::BaseObject
    field :song_create, resolver: Mutations::Songs::Create, description: "Create a Song"
  end
end
