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
    @cards.professional_id = current_professional.id
    #@cards.discipline_id = di
  	@cards.activity_title = params["card"][:activity_title]
  	@cards.short_description = params["card"][:short_description]
  	@cards.long_description = params["card"][:long_description]
  	@cards.organization = params["card"][:organization]
  	@cards.address = params["card"][:address]
  	@cards.city = params["card"][:city]
  	@cards.country = params["card"][:country]
  	@cards.price = params["card"][:price]
  	@cards.length = params["card"][:length]
  	@cards.opening_hour = params["appt"]
  	@cards.closing_hour = params["appt2"]
  	@cards.whatsapp = params["card"][:whatsapp]
  	@cards.website = params["card"][:website]
  	@cards.facebook = params["card"][:facebook]
  	@cards.instagram = params["card"][:instagram]
  	@cards.save
  	puts  @cards.errors.full_messages

  	puts "okk"
  	puts Discipline.id
  	puts params
  	puts "ok2"

	redirect_to root_path
  end
  def edit 
  	@cards = Card.find(params[:id])

  end


  def update
  	@cards = Card.find(params[:id])
  	@cards.update(long_description: params["cards"][:long_description], short_description: params["cards"][:short_description])



  end

	def create 
		@card = Card.new(card_parameters)
		@card.professional_id = current_professional.id
		@cards.discipline  = #Je ne sais pas comment récupérer la valeur de mon collection_select 
		@cards.opening_hour = params["appt"]
		@cards.closing_hour = params["appt2"] 
		@cards.latitude = params["lat"]
		@cards.longitude = params["lng"]
		@card.save
	end
	
	private 
  
	def card_parameters
		params.require(:card).permit(:activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :appt, :appt2, :lat, :lng)
	end


end
