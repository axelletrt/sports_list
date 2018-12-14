# frozen_string_literal: true

class HomeController < ApplicationController

  def index
    @cards = Card.all
    @disciplines = Discipline.all
    @search = Search.new
    @cards_surf = Discipline.find_by(name: 'surf')&.cards
    @cards_yoga = Discipline.find_by(name: 'yoga')&.cards
    @cards_scuba = Discipline.find_by(name: 'scuba diving')&.cards
  end
end
