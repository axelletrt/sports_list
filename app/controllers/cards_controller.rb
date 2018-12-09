class CardsController < ApplicationController
  
  # before_action :set_card, only: [:show, :create:edit, :update, :destroy]

  def index
    @cards = Card.all
  end

  def show
    # @users = User.all
    @card = Card.find(params[:id])
    @evaluations = @card.evaluations 
    # @evaluations = Evaluation.where(card_id: params[:id])
    evals = @evaluations.pluck(:eval)
    @moyenne = (evals.sum.to_f / evals.size).round(1)
    @languages = @card.spoken_languages
    @disciplines = @card.disciplines
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
        #format.html { redirect_to root_path, notice: 'Pin was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

   def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to @cards, notice: 'Pin was successfully destroyed.' }
    end
  end

  def create
  if params[:commit] == "PUBLIER"
		@card = Card.new(card_parameters)
    @card.professional_id = create_or_find_professional.id 
		@card.opening_hour = params["appt"]
		@card.closing_hour = params["appt2"]
		@card.latitude = params["lat"]
		@card.longitude = params["lng"]
    # @card.draft = false 
    @card.photos.attach(params[:card][:photos])
    @card.save 

  elsif params[:commit] = "BROUILLON"
    @card = Card.new(card_parameters)
    @card.professional_id = create_or_find_professional.id 
    @card.opening_hour = params["appt"]
    @card.closing_hour = params["appt2"]
    @card.latitude = params["lat"]
    @card.longitude = params["lng"]
    @card.draft = true 
    @card.save
		# respond_to do |format|
  #     if @card.save
  #       format.html { redirect_to cards_path, notice: 'Pin was successfully created.' }
  #     else
  #       @card.errors.full_messages
  #       format.html { render :new }
  #     end
	end
end

 
	private 

  # def set_card
  #     @card = Card.find(params[:id])
  # end
  

	def card_parameters
		params.require(:card).permit(:discipline_id, :spoken_language_ids, :spoken_language_ids, :activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :appt, :appt2, :lat, :lng, photos:[])
  end
  
  def create_or_find_professional 
      if current_user.professional.present?
        current_user.professional 
      else 
        current_user.create_professional 
      end 
  end 

end
