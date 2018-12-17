
class CardsController < ApplicationController
 def index
   @cards = Card.all
   @disciplines = Discipline.all.order(:name)
 end

 def show
   @users = User.all
   @card = Card.find(params[:id])
   @evaluations = @card.evaluations
   evals = @evaluations.pluck(:eval)
   @moyenne = (evals.sum.to_f / evals.size).round(1)
   @languages = @card.spoken_languages
   @disciplines = @card.disciplines
 end

 def new
   @card = Card.new
   @disciplines = Discipline.all
   @languages = SpokenLanguage.all
 end

 def edit
   @card = Card.find(params[:id])
   @disciplines = Discipline.all
   @languages = SpokenLanguage.all
 end

 def update
   @card = Card.find(params[:id])
   p_cards = params[:card]
   @card.update(card_parameters)
   @card.update(latitude: params["lat"])
   @card.update(longitude: params["lng"])
   @card.update(length: "00:#{p_cards["length(4i)"]}:#{p_cards["length(5i)"]}")
   @card.update(opening_hour: "00:#{p_cards["opening_hour(4i)"]}:#{p_cards["opening_hour(5i)"]}")
   @card.update(closing_hour: "00:#{p_cards["closing_hour(4i)"]}:#{p_cards["closing_hour(5i)"]}")
   CardsDiscipline.where(card_id: params[:id]).delete_all
   CardsLanguage.where(card_id: params[:id]).delete_all
   p_cards[:disciplines].each do |d_id|
     CardsDiscipline.create(card_id: @card.id, discipline_id: d_id)
   end
   p_cards[:spoken_languages].each do |l_id|
     CardsLanguage.create(card_id: @card.id, spoken_language_id: l_id)
   end
   redirect_to my_activity_index_path
 end

 def destroy
   @card = Card.find(params[:id])
   @card.destroy
   CardsDiscipline.where(card_id: params[:id]).delete_all
   CardsLanguage.where(card_id: params[:id]).delete_all
   redirect_to my_activity_index_path
  # @professional = Professional.where(user_id: current_user.professional[:id])
  # puts current_user.professional[:id]
end

 def create
  @cards = Card.all
   p_cards = params[:card]
   @card = Card.new(card_parameters)
   @card.professional_id = create_or_find_professional.id
   @card.latitude = params['lat']
   @card.longitude = params['lng']
   @card.length = "#{p_cards['opening_hour(4i)']}:#{p_cards['opening_hour(5i)']}"
   @card.opening_hour = "#{p_cards['opening_hour(4i)']}:#{p_cards['opening_hour(5i)']}"
   @card.closing_hour = "#{p_cards['closing_hour(4i)']}:#{p_cards['closing_hour(5i)']}"
   @card.save

   # send email to useremail when a new card is created
   if @card.save
     CardMailer.create_card(@card.professional.user.email).deliver_now
   end

   if params[:commit] == 'save and publish'
     @card.draft = false
     @card.save
     redirect_to @cards.last
   end

   p_cards[:disciplines].each do |d_id|
     CardsDiscipline.create(card_id: @card.id, discipline_id: d_id)
   end

   p_cards[:spoken_languages].each do |l_id|
     CardsLanguage.create(card_id: @card.id, spoken_language_id: l_id)
   end

end

 private

 def card_parameters
   params.require(:card).permit(:discipline_id, :spoken_language_ids, :spoken_language_ids, :activity_title, :short_description, :long_description, :organization, :address, :city, :country, :price, :length, :whatsapp, :website, :facebook, :instagram, :appt, :appt2, :lat, :lng, :avatar, photos: [])
 end

 def create_or_find_professional
   if current_user.professional.present?
     current_user.professional
   else
     current_user.create_professional
   end
 end
end
