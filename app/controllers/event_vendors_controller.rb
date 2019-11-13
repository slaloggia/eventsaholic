class EventVendorsController < ApplicationController

    def create
        @event_vendor = EventVendor.create(event_vendor_params)
        redirect_to show_events_path(params[:event_id])
    end

    private

    def event_vendor_params
        params.require(:event_vendor).permit(:vendors[:vendor_id], :event_id)
    end
end
