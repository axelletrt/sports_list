class Card < ApplicationRecord
  has_many_attached :photos
  belongs_to :professional
  has_many :cards_languages
  has_many :spoken_languages, through: :cards_languages
  has_many :cards_disciplines
  has_many :disciplines, through: :cards_disciplines
  has_many :evaluations
  enum organization: [:coach, :school, :club]
  enum city: [:canggu, :kuta, :seminyak]
  enum country: [:indonesia]

  has_many :cards_discipline, inverse_of: :card
  has_many :disciplines, through: :cards_discipline
  accepts_nested_attributes_for :disciplines, reject_if: proc { |attributes| attributes[:name].blank? }, allow_destroy: true

#  validates :activity_title, presence: true
#  validates :short_description, presence: true
#  validates :organization, presence: true
#  validates :city, presence: true
#  validates :price, presence: true
#  validates :length, presence: true
end
