# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Song.create!(
    title: [Faker::Space.star, Faker::Space.moon, Faker::Space.galaxy].sample,
    lyrics: Faker::Lorem.paragraph(sentence_count: 4),
    description: Faker::Lorem.sentence,
    artist: Faker::Artist.name,
    album: Faker::Lorem.word,
    cover: Faker::LoremFlickr.image,
    duration: Faker::Number.number(digits: 3),
    year: [1999, 2001, 2020, 2021, 1975, 1982].sample,
    published: [true, false].sample
  )
end