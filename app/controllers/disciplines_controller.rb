class DisciplinesController < ApplicationController


  def index
    @disciplines = Discipline.all
  end

  def show
    @card = Card.all
    @discipline_name = Discipline.find(params[:id]).name
    sport_cards_id = CardsDiscipline.where(discipline_id: params[:id]).pluck(:card_id)
    # only sport cards asked by the visitor
    @cards = @card.find(sport_cards_id)
    @discipline_name = Discipline.find(params[:id]).name
  end
end
