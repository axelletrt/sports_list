# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed table SpokenLanguage

SpokenLanguage.create(name: 'English')
SpokenLanguage.create(name: 'Spanish')
SpokenLanguage.create(name: 'French')

# seed table Discipline

Discipline.create!(name: 'surf')
Discipline.create!(name: 'yoga')
Discipline.create!(name: 'scuba diving')
#
# seed table User
# index = 1
# 60.times do
#   user = User.create! :username => 'John', :first_name => 'John', :last_name => "poufi #{index}", :email => "john#{index}@gmail.com", :password => 'topsecret', :password_confirmation => 'topsecret'
#   index += 1
# end
#
# seed table Card
# index = 1
# index0 = 0
# index1 = 1
# index2 = 2
#
# 20.times do
#   card = Card.new(activity_title: "surf + #{index}", short_description: "short_description#{index}",
#         long_description: "je suis une longue description numéro #{index}", organization: index2,
#         address: "adress#{index}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
#         opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
#         website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
#         professional_id: index)
#   card.save
#   card.disciplines << Discipline.first
#   card.spoken_languages << SpokenLanguage.first
#
#   card = Card.new(activity_title: "surf + #{index + 1}", short_description: "short_description#{index + 1}",
#         long_description: "je suis une longue description numéro #{index + 1}", organization: index2,
#         address: "adress#{index + 1}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
#         opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
#         website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
#         professional_id: index + 1)
#   card.save
#   card.disciplines << Discipline.find(2)
#   card.spoken_languages << SpokenLanguage.find(2)
#
#   card = Card.new(activity_title: "surf + #{index + 2}", short_description: "short_description#{index + 2}",
#         long_description: "je suis une longue description numéro #{index + 2}", organization: index2,
#         address: "adress#{index + 2}", city: index2, country: 0, price: "45", length: "23:59:59.9999999",
#         opening_hour: "23:59:59.9999999", closing_hour: "23:59:59.9999999", whatsapp: "+33676874421",
#         website: "https/je_suis_une_url", facebook: "https/facebook_url", instagram: "https/instagram_url",
#         professional_id: index + 2)
#   card.save
#   card.disciplines << Discipline.find(3)
#   card.spoken_languages << SpokenLanguage.find(3)
#
# index += 1
# end
