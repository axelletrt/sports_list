class CardsDiscipline < ApplicationRecord
  
  belongs_to :card
  belongs_to :discipline


  belongs_to :discipline, inverse_of: :cards_discipline
  belongs_to :card, inverse_of: :cards_discipline

end
