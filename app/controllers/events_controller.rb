class EventsController < ApplicationController
    def index
        @events = Event.all
    end
    def secret
    end

    def new
        @event = Event.create
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @event = Event.new(
            'title' => params[:event_title],
            'description' => params[:event_description],
            'start_date' => params[:event_start_date],
            'duration' => params[:event_duration],
            'price' => params[:event_price],
            'location' => params[:event_location])
    end
end
