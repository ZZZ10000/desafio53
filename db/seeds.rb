# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

50.times do
  Movie.create(
    name: Faker::Movie.title,
    synopsis: Faker::Lorem.paragraph(sentence_count: 10),
    director: Faker::Name.name
  )
end

50.times do
  Serie.create(
    name: Faker::TvShows::Friends.character,
    synopsis: Faker::Lorem.paragraph(sentence_count: 10),
    director: Faker::Name.name
    )
end

50.times do
  Documentary.create(
    name: Faker::Book.title,
    synopsis: Faker::Lorem.paragraph(sentence_count: 10),
    director: Faker::Name.name
    )
end
Movie.create(name: "Inception", synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology...", director: "Christopher Nolan")
Serie.create(name: "Breaking Bad", synopsis: "A high school chemistry teacher turned methamphetamine manufacturer...", director: "Vince Gilligan")
Documentary.create(name: "Planet Earth", synopsis: "A documentary series showcasing different ecosystems around the world.", director: "David Attenborough")

