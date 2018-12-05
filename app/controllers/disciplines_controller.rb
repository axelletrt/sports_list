class DisciplinesController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def categorie
    cards = Card.all
    categorie_cards_id = CardsDiscipline.where(discipline_id: params[:id]).pluck(:card_id)
    @categorie_cards = cards.find(categorie_cards_id)
  end
end
