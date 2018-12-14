# frozen_string_literal: true

class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
  end

  def show
    @discipline_name = Discipline.find(params[:id]).name
    sport_cards_id = CardsDiscipline.where(discipline_id: params[:id]).pluck(:card_id)
    # only sport cards asked by the visitor
    @cards = Card.all.find(sport_cards_id)
    @discipline_name = Discipline.find(params[:id]).name
  end
end