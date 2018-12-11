class HomeController < ApplicationController
  def index

    @disciplines = Discipline.all 
     @search = Search.new
   
  end

 



  
end
