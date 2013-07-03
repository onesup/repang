class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @user = User.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
  
  def latest_event
    redirect_to event_path(Event.last)
  end

end
