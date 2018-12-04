# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.times do
  SpokenLanguage.create(name: "Anglais")
  SpokenLanguage.create(name: "Espagnol")
  SpokenLanguage.create(name: "Français")
end

1.times do
  Discipline.create!(name: "surf")
  Discipline.create!(name: "yoga")
  Discipline.create!(name: "scuba diving")
end

index = 1
60.times do
  user = Professional.create! :first_name => 'John', :last_name => "poufi #{index}", :email => "john#{index}@gmail.com", :password => 'topsecret', :password_confirmation => 'topsecret'
  index += 1
end

index = 1
index0 = 0
index1 = 1
index2 = 2

20.times do
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index2, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional_id: index)
card.save
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index1, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional_id: index)
card.save
card = Card.new(activity_title: "surf + #{index}", long_description: "je suis une longue description numéro #{index}",
      organization: index0, city: index2, country: 0, price: "45", length: "23:59:59.9999999", professional_id: index)
card.save
index += 1
end

index = 1
20.times do
  CardsDiscipline.create!(card_id: index, discipline_id: 1)
  index += 1
end

20.times do
  CardsDiscipline.create!(card_id: index, discipline_id: 2)
  index += 1
end

10.times do
  CardsDiscipline.create!(card_id: index, discipline_id: 2)
  CardsDiscipline.create!(card_id: index, discipline_id: 3)
  index += 1
end
