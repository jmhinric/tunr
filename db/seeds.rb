# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(
  name: "Calvin Harris",
  genre: "House",
  photo_url: "http://goo.gl/b2kpJz"
  )

Song.create(
  title: "We Found Love",
  year: 2011,
  artist_id: "1"
  )

Song.create(
  title: "Sweet Nothing",
  year: 2012,
  artist_id: "1"
  )

Artist.create(
  name: "Michael Jackson",
  genre: "Pop",
  photo_url: "http://goo.gl/ri4hIG"
  )

Song.create(
  title: "Thriller",
  year: 1982,
  artist_id: "2"
  )

Song.create(
  title: "Bad",
  year: 1987,
  artist_id: "2"
  )