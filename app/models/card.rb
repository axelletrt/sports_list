class Card < ApplicationRecord
  belongs_to :professional
  has_many :spoken_languages, through: :cards_languages
  has_many :disciplines, through: :cards_disciplines
  enum organization: [:coach, :school, :club]
  enum city: [:canggu, :kuta, :seminyak]
  enum country: [:indonesia]
end
