class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end
  def new
  	@cards = Card.new
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
