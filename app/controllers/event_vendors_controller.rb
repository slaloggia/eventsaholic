class EventVendorsController < ApplicationController

    def create
        @event_vendor = EventVendor.new
        raise params.inspect
    end

    private

    def event_vendor_params
        params.require(:event_vendor).permit(:vendors[:vendor_id])
    end
end
