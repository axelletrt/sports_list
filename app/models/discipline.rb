class Discipline < ApplicationRecord
  has_many :cards_disciplines
  has_many :cards, through: :cards_disciplines
end
