class CardMailer < ApplicationMailer
    default from: "axelle.tortai@student.esc-rennes.com"

    def create_card(email)
        mail(:to => email, :subject => "Creation of your experience")
    end 
       
end
