class ReviewsController < ApplicationController

    def create
        @review = Review.create(review_params)
    end

    def index
        @event = Event.find(params[:event_id])
    end

    private

    def review_params
        params.require(:review).permit(:title, :event_id, :content)
    end
end