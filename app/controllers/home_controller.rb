class HomeController < ApplicationController
  
  def index
    @disciplines = Discipline.all 
    @search = Search.new
    @card = Card.all 
    sport_cards_id = CardsDiscipline.where(discipline_id: params[:id]).pluck(:card_id)
    @cards = @card.find(sport_cards_id)
  end

 



  
end
