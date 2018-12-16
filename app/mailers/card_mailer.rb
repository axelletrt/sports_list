# frozen_string_literal: true

class CardMailer < ApplicationMailer
  default from: 'contact.sportslist@gmail.com'

  def create_card(email)
    mail(to: email, subject: 'Creation of your experience')
  end
end
