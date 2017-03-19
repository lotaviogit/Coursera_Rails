# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# d1 = Day.create(cost: 10.5, description: "Day 1", day: 28, month: 1, year: 2017)
# d2 = Day.create(cost: 20.5, description: "Day 2", day: 28, month: 1, year: 2017)
# d3 = Day.create(cost: 30.7, description: "Day 3", day: 28, month: 1, year: 2017)

d5 = Day.create(cost: 130.7, description: "Day 5 - comments", day: 28, month: 1, year: 2017)

c1 = Comment.create(day_id: d5.id, text: "Hello", cost: 4.0)
c2 = Comment.create(day_id: d5.id, text: "ok..", cost: 3.0)
c3 = Comment.create(day_id: d5.id, text: "Bye", cost: 15.0)