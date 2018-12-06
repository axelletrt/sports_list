class Card < ApplicationRecord
  belongs_to :professional
  has_many :cards_languages
  has_many :spoken_languages, through: :cards_languages
  has_many :cards_disciplines
  has_many :disciplines, through: :cards_disciplines
  has_many :evaluations
  enum organization: [:coach, :school, :club]
  enum city: [:canggu, :kuta, :seminyak]
  enum country: [:indonesia]
end
