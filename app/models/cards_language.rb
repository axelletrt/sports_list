# frozen_string_literal: true

class CardsLanguage < ApplicationRecord
  belongs_to :card
  belongs_to :spoken_language
end
