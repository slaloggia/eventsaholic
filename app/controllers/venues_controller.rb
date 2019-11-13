class VenuesController < ApplicationController
    before_action :find_venue, only: [:show]

    def index
        @venue = Venue.new
        if params[:search]
            @venues = Venue.search(params[:search])
        else
            @venues = Venue.all
        end
    end

    def show
    end


    private
    
    def venue_params
        params.require(:venue).permit(:name, :location, :capacity, :type, :search)
    end

    def find_venue
        @venue = Venue.find(params[:id])
    end
end
