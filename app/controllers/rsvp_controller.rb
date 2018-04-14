class RsvpController < ApplicationController
 def create
    rsvp = current_user.rsvps.build({post_id: params[:id]})
    if rsvp.save 
    end
 end
  
end