class ReviewsController < ApplicationController

    def create
        @review = Review.create(review_params)
    end

    private

    def review_params
        params.require(:review).permit(:title, :event_id, :content)
    end
end