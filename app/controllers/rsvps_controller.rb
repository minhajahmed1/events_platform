class RsvpsController < ApplicationController

#   def create
    # rsvps = current_user.rsvps.build({post_id: params[:id]})
    # if rsvps.save 
    # end
#  end
def create
     @rsvps = current_user.rsvps.build({post_id: params[:id]})
    if @rsvps.save
      flash[:notice] = "You have RSVP'd"
      redirect_to post_path
    end
end
def rsvps
  @rsvps=rsvps.new
end



end