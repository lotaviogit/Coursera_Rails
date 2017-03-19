# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create([first_name: "First", last_name: "Last", gender: "Male", birth_year: 1992, password_digest: "123456"])
u2 = User.create([first_name: "Eda", last_name: "Currie", gender: "Female", birth_year: 1990, password_digest: "123456"])
u3 = User.create([first_name: "Marie", last_name: "Lovelance", gender: "Female", birth_year: 1982, password_digest: "123456"])

# todo_l_1 = Todolist.create([])