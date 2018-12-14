class SpokenLanguage < ApplicationRecord
  has_many :cards_languages
  has_many :cards, through: :cards_languages
end
