class UserMailer < ApplicationMailer
    def rsvp_email(user)
        @rsvp=rsvp
        mail(to: @user.email, subject: "thanks for registering for the event!")
  
    end
end
