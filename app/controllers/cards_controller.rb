class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
    @evaluations = Evaluation.where(card_id: params[:id])
    evals = @evaluations.pluck(:eval)
    @moyenne = (evals.sum.to_f / evals.size).round(1)
    @languages = @card.spoken_languages
    @disciplines = @card.disciplines
  end

  def new
  	@cards = Card.new
  end

  def edit
  	@cards = Card.find(params[:id])
  end

  def update
  	@cards = Card.find(params[:id])
  	cards_params = params.require(:card).permit(:long_description, :short_description)
  	@cards.update(cards_params)
  end

  def create
		@card = Card.new(card_parameters)
		@card.professional_id = current_professional.id
		@card.discipline_id  = params["card"]["id"]
		@card.opening_hour = params["appt"]
		@card.closing_hour = params["appt2"]
		@card.latitude = params["lat"]
		@card.longitude = params["lng"]
		@card.save
  end

	private

	def card_parameters
		params.require(:card).permit(:activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :appt, :appt2, :lat, :lng)
	end


end
