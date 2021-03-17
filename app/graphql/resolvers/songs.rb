module Resolvers
  class Songs < ::Resolvers::BaseResolver
    type [Types::Songs::SongType], null: false

    argument :sort, Types::Inputs::SortOption, required: false
    argument :search, String, required: false

    def resolve(sort: nil, search: nil)
      ::Song.all
            .search_by(search)
            .sorted_by(sort)
    end
  end
end
