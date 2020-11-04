class EventsController < ApplicationController
  def index
  end

  def show
      
    @event = Event.find(params[:id])
    @user = User.all
    
  end

  def new
    
  end
  
end
