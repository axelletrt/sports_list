# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed table SpokenLanguage
1.times do
  SpokenLanguage.create(name: "English")
  SpokenLanguage.create(name: "Spanish")
  SpokenLanguage.create(name: "French")
end

# seed table Discipline
1.times do
  Discipline.create!(name: "surf")
  Discipline.create!(name: "yoga")
  Discipline.create!(name: "scuba diving")
end

=begin
# seed table Professional
index = 1
60.times do
  user = Professional.create! :first_name => 'John', :last_name => "poufi #{index}", :email => "john#{index}@gmail.com", :password => 'topsecret', :password_confirmation => 'topsecret'
  index += 1
end

# seed table Card
index = 1
index0 = 0
index1 = 1
index2 = 2

20.times do
  card = Card.new(activity_title: "surf + #{index}", short_description: "short_description#{index}",
        long_description: "je suis une longue description numéro #{index}", organization: index2,
        address: "adress#{index}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
        opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
        website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
        professional_id: index)
  card.save
  card = Card.new(activity_title: "surf + #{index + 1}", short_description: "short_description#{index + 1}",
        long_description: "je suis une longue description numéro #{index + 1}", organization: index2,
        address: "adress#{index + 1}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
        opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
        website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
        professional_id: index + 1)
  card.save
  card = Card.new(activity_title: "surf + #{index + 2}", short_description: "short_description#{index + 2}",
        long_description: "je suis une longue description numéro #{index + 2}", organization: index2,
        address: "adress#{index + 2}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
        opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
        website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
        professional_id: index + 2)
  card.save
index += 1
end

#seed table CardsDiscipline
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

# seed table CardsLanguage
index = 1
20.times do
  CardsLanguage.create!(card_id: index, spoken_language_id: 1)
  index += 1
end

20.times do
  CardsLanguage.create!(card_id: index, spoken_language_id: 2)
  index += 1
end

10.times do
  CardsLanguage.create!(card_id: index, spoken_language_id: 2)
  CardsLanguage.create!(card_id: index, spoken_language_id: 3)
  index += 1
end
=end
