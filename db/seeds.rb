# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t = Theater.create({name: 'Test Theater', description: 'Test Description', address: 'Test Address'})
sh = t.shows.create({name: 'Test Show', show_time: Time.now})
Movie.create({name: 'Test Movie', description: 'Test Description', theater: t})
sh.seats.create({row: 'A', seat_number: 1, price: 100, _class: 'first'})
