class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to event_reviews_path(params[:event_id])
    end

    def index
        @event = Event.find(params[:event_id])
        @event_reviews = @event.reviews
        @review = Review.new(event_id: @event.id)
    end

    private

    def review_params
        params.require(:review).permit(:title, :event_id, :content)
    end
end