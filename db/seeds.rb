# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = open(url).read
drinks_hash = JSON.parse(json)

for item in drinks_hash['drinks']
  Ingredient.create(name: item['strIngredient1'])
end

c = Cocktail.new(name: "Mojito")
c.save

d = Cocktail.new(name: "Graveyard")
d.save
