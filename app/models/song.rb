class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  
  scope :sorted_by, ->(sort) { order(sort[:field] => sort[:direction]) if sort.present?}
  scope :search_by, ->(search) {
    query = "artist ILIKE :search OR title ILIKE :search OR album ILIKE :search"
    where(query, search: "%#{search}%") if search.present?
  }
end
