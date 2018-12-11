class DisciplinesController < ApplicationController


  def index
    @disciplines = Discipline.all
  end

  def show
    @card = Card.all
    sport_cards_id = CardsDiscipline.where(discipline_id: params[:id]).pluck(:card_id)
    # only sport cards asked by the visitor
    @cards = @card.find(sport_cards_id)
  end
end
