class CardsLanguage < ApplicationRecord
  belongs_to :cards
  belongs_to :spoken_languages
end
