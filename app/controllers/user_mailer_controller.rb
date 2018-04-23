class User_MailerController < ApplicationController
    def rsvp
        @rsvp=@post.user
        UserMailer.rsvp_email(@user).deliver_now
    end
end