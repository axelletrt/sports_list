class Card < ApplicationRecord
  has_many :spoken_languages, through: :cards_languages
  enum organization: [:coach, :school, :club]
  enum city: [:canggu, :kuta, :seminyak]
  enum country: [:indonesia]
end
