# frozen_string_literal: true

class Evaluation < ApplicationRecord
  belongs_to :card
  belongs_to :user
  validates :eval, presence: true
end
