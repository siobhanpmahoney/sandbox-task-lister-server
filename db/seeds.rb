# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = User.create(email: "siobhan@gmail.com")

list = List.find_or_create_by(title: "to do", user_id: s.id)

task = Task.create(title: "clean room", description: "need to clean my room", status: "reviewed", priority_level: (0..9).to_a.sample, date_due: Time.now.in_time_zone, list_id: list.id)