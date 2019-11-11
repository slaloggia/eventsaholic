class EventsController < ApplicationController
before_action :set_event, only: [:show, :edit, :update]

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to @event
        else
            # flash error messages?
            redirect_to new_event_path
        end
    end

    def show
    end

    def edit
    end

    def update
        if @event.update(event_params)
            redirect_to @event
        else
            # flash error messages?
            redirect_to edit_event_path
        end
    end

    private

    def event_params
        params.require(:event).permit(:client_id, :venue_id, :title, :type, :date, :approved)
    end

    def set_event
        @event = Event.find(params[:id])
    end

end
