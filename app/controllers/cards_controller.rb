class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def index
    @cards = Card.all
  end

  def show
  	@cards = Card.find(params[:id])
  end

  def new
  	@cards = Card.new
  end

  def create
  	@cards = Card.new(card_params)
   
    @card.professional_id = current_professional.id
    @card.discipline_id  = params["card"]["id"]
    @card.opening_hour = params["appt"]
    @card.closing_hour = params["appt2"] 
    @card.latitude = params["lat"]
    @card.longitude = params["lng"]
    #@cards.image.attach = params["image"]

  	
    respond_to do |format|
      if @cards.save!
        format.html { redirect_to root_path, notice: 'Pin was successfully created.' }
      else
        @cards.errors.full_messages
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @cards.update(card_params)
        format.html { redirect_to root_path, notice: 'Pin was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

   def destroy
    @cards.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
    end
  end

  private

    def set_card
      @cards = Card.find(params[:id])
    end

    def card_params
      params.require(:card).permit(:activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :images_disciplines)
    end

end
