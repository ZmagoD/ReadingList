# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')


Book.create!([{
  title: "Hyperion",
  author: "Dan Simmons",
  description: "Probably my favorite ...",
  amazon_id: "0553283685",
  rating: 5,
  finished_on: 10.days.ago,
  genre: fiction	
},
{
  title: "Jony Ive: The Genius Behind Apple's Greatest Products",
  author: "Leander Kahney",
  description: "Probably a favorite for .......",
  amazon_id: "159184617X",
  rating: 4,
  finished_on: 1.day.ago,
  genre: non_fiction
},
{
  title: "Mindstorms",
  author: "Seymour A. Papert",
  description: "Although this book .......",
  amazon_id: "0465046746",
  rating: 3,
  finished_on: nil,
  genre: non_fiction
}
])

p "Created #{Book.count} books"
