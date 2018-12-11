require 'pry'
class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    p params
      redirect_to discipline_path(params[:search][:discipline_id].to_i)
  end

  def show
   redirect_to discipline_path
    #@search = Search.find(params[:id])
    #@search = Search.search(@search.keywords, @search.discipline_id)
    #Permet d'envoyer les paramètres au model search et à les réutilisé dans la méthode self.search
  end

private

  def search_params
    params.require(:search).permit(:keywords,:discipline_id,:id)
  end

end
