# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create([
    {name: 'Harry', bio: 'Lived a bit'},
    {name: 'Barry', bio: 'Lived a lot'},
    {name: 'Larry', bio: 'Lived some'},
    {name: 'Sally', bio: 'Lived around here'},
    {name: 'Karry', bio: 'Lived upside down'},
    {name: 'Danny', bio: 'Lived the right way up'}
])

Genre.create([
    {genres: 'Pop'},
    {genres: 'Rock'},
    {genres: 'Jazz'},
    {genres: 'Blues'},
    {genres: 'Funk'},
    {genres: 'Rap'},
    {genres: 'Classical'},
    {genres: 'EDM'},
])

@genres = Genre.all
@artists = Artist.all
i = 0
30.times do

    Song.create(name: i, artist_id: @artists.sample, genre_id: @genres.sample)
i += 1
end