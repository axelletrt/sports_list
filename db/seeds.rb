# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

index = 1
index0 = 0
index1 = 1
index2 = 2

20.times do
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index2, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional: index)
card.save
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index1, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional: index)
card.save
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index0, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional: index)
card.save
index += 1
end
