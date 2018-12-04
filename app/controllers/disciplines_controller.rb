class DisciplinesController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def surf
    cards = Card.all
    surf_cards_id = CardsDiscipline.where(discipline_id: 1).pluck(:card_id)
    @surf_cards = cards.find(surf_cards_id)
  end

  def yoga
    cards = Card.all
    yoga_cards_id = CardsDiscipline.where(discipline_id: 2).pluck(:card_id)
    @yoga_cards = cards.find(yoga_cards_id)
    # optional: get the languages for the views
  end

  def scuba_diving
    cards = Card.all
    scuba_diving_cards_id = CardsDiscipline.where(discipline_id: 3).pluck(:card_id)
    @scuba_diving_cards = cards.find(scuba_diving_cards_id)

  end
end
