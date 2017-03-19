# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
task2 = Task.create(name: "Task 2", num: 2, 
	img_url: "https://i.ytimg.com/vi/prALrHUJ8Ns/hqdefault.jpg")
task1 = Task.create(name: "Task 1", num: 1, 
	img_url: "https://i.ytimg.com/vi/prALrHUJ8Ns/hqdefault.jpg")