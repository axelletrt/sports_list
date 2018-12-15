# frozen_string_literal: true

class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
  end

  def show
    #simplified code by Dorian : To display Discipline.cards 
    @discipline = Discipline.find(params[:id])
    @cards = @discipline.cards
  end
end 
