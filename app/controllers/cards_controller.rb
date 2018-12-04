class CardsController < ApplicationController

  def index

  end
  def show
  	@cards = Card.find(params[:id])
  end
  def new
  	@cards = Card.new
  end

  def create
  	@cards = Card.new
	
  	@cards.activity_title = params["card"][:activity_title]
  	@cards.short_description = params["card"][:short_description]
  	@cards.long_description = params["card"][:long_description]
  	@cards.organization = params["card"][:organization]
  	@cards.address = params["card"][:address]
  	@cards.city = params["card"][:city]
  	@cards.country = params["card"][:country]
  	@cards.price = params["card"][:price]
  	@cards.length = params["card"][:length]
  	@cards.opening_hour = params["card"][:opening_hour]
  	@cards.closing_hour = params["card"][:closing_hour]
  	@cards.whatsapp = params["card"][:whatsapp]
  	@cards.website = params["card"][:website]
  	@cards.facebook = params["card"][:facebook]
  	@cards.instagram = params["card"][:instagram]


  	









  	@cards.save

  	redirect_to root_path
  end 
end
