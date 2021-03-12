module Types
  module Posts
    class PostType < BaseTypes::BaseObject
      field :title, String, null: true
      field :text, String, null: true
    end
  end
end
