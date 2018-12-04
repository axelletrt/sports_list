class CardsDiscipline < ApplicationRecord
  belongs_to :cards
  has_many :disciplines
end
