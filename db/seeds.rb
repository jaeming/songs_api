# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

3.times do
  year = [1999, 2001, 2020, 2021, 1975, 1982].sample
  artist = Artist.create(name: Faker::Artist.name)
  album = Album.create(
    name: Faker::Lorem.word,
    year: year,
    artist: artist,
    artwork: Faker::LoremFlickr.image
  )
  10.times do |count|
    Song.create!(
      title: [Faker::Space.star, Faker::Space.moon, Faker::Space.galaxy].sample,
      lyrics: Faker::Lorem.paragraph(sentence_count: 4),
      description: Faker::Lorem.sentence,
      duration: Faker::Number.number(digits: 3),
      year: year,
      album: album,
      artist: artist,
      published: [true, false].sample,
      album_track: count + 1
    )
  end
end