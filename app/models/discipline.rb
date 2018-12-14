# frozen_string_literal: true

class Discipline < ApplicationRecord
  has_many :cards_disciplines
  has_many :cards, through: :cards_disciplines

  has_many :cards_discipline, inverse_of: :discipline
  has_many :cards, through: :cards_discipline
end
