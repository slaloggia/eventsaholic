class EventVendorsController < ApplicationController

    def create
        EventVendor.create(event_vendor_params)
    end

    private

    def event_vendor_params
        params.require(:event_vendor).permit(:event_id, :vendor_id)
    end
end
