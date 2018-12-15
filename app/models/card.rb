# frozen_string_literal: true

class Card < ApplicationRecord
  extend FriendlyId
  friendly_id :activity_title, use: :slugged

  has_many_attached :photos

  belongs_to :professional
  has_many :cards_languages
  has_many :spoken_languages, through: :cards_languages
  has_many :cards_disciplines
  has_many :disciplines, through: :cards_disciplines
  has_many :evaluations
  enum organization: %i[coach school club]
  enum city: %i[
  Amlapura
  Bakas
  Balikpapan
  Batuan
  Bedugul
  Besakih
  Candi Dasa
  Canggu
  Celuk
  Cepaka
  Denpasar
  Gitgitl
  Jatiluwith
  Jimbaran
  Kedonganan
  Kerobokan
  Ketewel
  Kintamani
  Kusamba
  Kuta
  Lalang Linggah
  Lovina Beach
  Munduk
  Nusa Dua
  Pandangbai
  Sayan
  Sekumpul
  Semarapura
  Seminyak
  Singaraja
  Tampaksiring
  Tenganan
  Tuban
  Ubud
  Uluwatu
  Other
  ]
  enum country: [:indonesia]

  has_many :cards_discipline, inverse_of: :card
  has_many :disciplines, through: :cards_discipline
  accepts_nested_attributes_for :disciplines, reject_if: proc { |attributes| attributes[:name].blank? }, allow_destroy: true

  def evaluation_average
    evals = evaluations.pluck(:eval)
    average = (evals.sum.to_f / evals.size).round(1)
  end

  #validates :activity_title, presence: true
  #validates :short_description, presence: true
  #validates :organization, presence: true
  #validates :city, presence: true
  #validates :price, presence: true
  #validates :length, presence: true
end
