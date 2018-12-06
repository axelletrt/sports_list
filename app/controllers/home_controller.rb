class HomeController < ApplicationController
  def index
    @disciplines = Discipline.all 
  end
end
