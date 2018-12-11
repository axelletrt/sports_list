class UserMailer < ApplicationMailer
    default from: "axelle.tortai@student.esc-rennes.com"
    
    def welcome_email(user)
        @user = user
        mail(:to => user.email, :subject =>"Congratulations for your subscription")
    end

end
