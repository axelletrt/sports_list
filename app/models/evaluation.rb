class Evaluation < ApplicationRecord
  belongs_to :card
  validates :eval, presence: true
end
