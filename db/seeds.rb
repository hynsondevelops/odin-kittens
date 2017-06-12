# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ["Cat", "Kitty", "Kitten", "Kitty Cat"]

for i in 0...names.size
	Kitten.create!(name: names[i], age: (i + 1) * 3, cuteness: (i + 2) * 2, softness: (i*2 + 1))
end