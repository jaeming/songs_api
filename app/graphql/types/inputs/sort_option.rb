module Types
  module Inputs
    class SortOption < Types::BaseTypes::BaseInputObject
      argument :field, Types::Enums::SongSortFields, required: true
      argument :direction, Types::Enums::Sort, required: true
    end
  end
end
