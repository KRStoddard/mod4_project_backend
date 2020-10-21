# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times {User.create({username: Faker::Internet.username, password: Faker::Internet.password})}

100.times {Note.create({title: Faker::TvShows::Buffy.episode, content: Faker::TvShows::DrWho.quote, user_id: User.all.sample.id})}