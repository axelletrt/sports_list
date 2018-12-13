# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @cards = Card.all
    @disciplines = Discipline.all
    @search = Search.new
    surf_cards_id = CardsDiscipline.where(discipline_id: Discipline.where(name: 'surf')).pluck(:card_id)
    yoga_cards_id = CardsDiscipline.where(discipline_id: Discipline.where(name: 'yoga')).pluck(:card_id)
    scuba_cards_id = CardsDiscipline.where(discipline_id: Discipline.where(name: 'scuba diving')).pluck(:card_id)
    # @cards_surf = @cards.find(surf_cards_id)
    @cards_yoga = @cards.find(yoga_cards_id)
    @cards_scuba = @cards.find(scuba_cards_id)
  end
end
