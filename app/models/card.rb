class Card < ApplicationRecord
  belongs_to :professional
  has_many :spoken_languages, through: :cards_languages
  has_many :disciplines, through: :cards_disciplines
  enum organization: [:coacha, :school, :club]
  enum city: [:canggu, :kuta, :seminyak]
  enum country: [:indonesia]

  has_many_attached :images_disciplines

end
