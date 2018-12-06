class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]


  def show
  	#@card = Card.with_attached_images.find(params[:id])
    @card = Card.all
  end

  def new
  	@card = Card.new
  end

  def edit 
  	@card = Card.find(params[:id])

  end


  def update
    @card = Card.find(params[:id])
    @card.update(long_description: params["cards"][:long_description], short_description: params["cards"][:short_description])
    respond_to do |format|
      if @cards.update(card_params)
        format.html { redirect_to root_path, notice: 'Pin was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


   def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
    end
  end


	def create 
		@card = Card.new(card_parameters)
		@card.professional_id = current_professional.id
		@card.discipline_id  = params["card"]["id"]
		@card.opening_hour = params["appt"]
		@card.closing_hour = params["appt2"] 
		@card.latitude = params["lat"]
		@card.longitude = params["lng"]
    @card.photos.attach(params[:card][:photos])
    @card.photos.attach(params[:card][:image_header])


		


		respond_to do |format|
      if @card.save
        format.html { redirect_to root_path, notice: 'Pin was successfully created.' }
      else
        @card.errors.full_messages
        format.html { render :new }
      end
    end
	end
	
	private 

  def set_card
      @card = Card.find(params[:id])
  end
  
	def card_parameters
		params.require(:card).permit(:activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :appt, :appt2, :lat, :lng, :image_header, photos:[])
	end



end
