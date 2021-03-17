module Types
  module Enums
    class Sort < Types::BaseTypes::BaseEnum
      value "ASC", value: :asc
      value "DESC", value: :desc
    end
  end
end