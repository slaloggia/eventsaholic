class EventsController < ApplicationController
before_action :set_event, only: [:show, :edit, :update]

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(params.require(:event).permit(:client_id, :venue_id, :title, :event_type, :date, :approved))
        if @event.save
            redirect_to @event
        else
            flash[:errors] = @event.errors.full_messages
            redirect_to new_event_path
        end
    end

    def show
    end

    def edit
    end

    def update
        if @event.update(params.require(:event).permit(:title, :event_type, :date, :approved))
            redirect_to @event
        else
            flash[:errors] = @event.errors.full_messages
            redirect_to edit_event_path
        end
    end

    private

    def event_params
        params.require(:event).permit(:client_id, :venue_id, :title, :event_type, :date, :approved)
    end

    def set_event
        @event = Event.find(params[:id])
    end

end
