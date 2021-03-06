# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")
cachaca = Ingredient.create(name: "Cachaca")
sugar = Ingredient.create(name: "Sugar")

mojito = Cocktail.create(name: "Mojito")
caipirinha = Cocktail.create(name: "Caipirinha")

10.times do

  Dose.create(description: "One", ingredient: Ingredient.find(rand(1..5)), cocktail: Cocktail.find(rand(1..2)))

end

