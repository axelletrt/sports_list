<<<<<<< HEAD
class MyActivityController < ApplicationController
	def index
		 if current_user.professional.present?  
 	@cards = Card.where(professional_id: current_user.professional[:id])

 	else
 		puts "ok"
 	end
 	#@cards = current_user.professional.present?
 	#@tess = Card.all
 	#@card = activity_title.present?


 	
 	#@card = Card.find(params[:id])
	end
=======
# frozen_string_literal: true
>>>>>>> development

class MyActivityController < ApplicationController
  def index
    if current_user.professional.present?
      @cards = Card.where(professional_id: current_user.professional[:id])

    else
      puts 'ok'
  end
    # @cards = current_user.professional.present?
    # @tess = Card.all
    # @card = activity_title.present?

    @testt = Card.all
  end
end
