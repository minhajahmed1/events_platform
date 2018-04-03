class HomeController < ApplicationController
  def index
  end
  
  def ruby meetup
  end
  skip_before_action :authenticate_user!, :only => [:index]
end
