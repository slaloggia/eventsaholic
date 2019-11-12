class Venue < ApplicationRecord
    has_many :events
    has_many :clients, through: :events
    has_many :vendors, through: :events
    has_many :reviews, through: :events


    def self.search(search)
        Venue.where("capacity > ?", search)
    end

    def featured_venue
        self.events.max_by{|event| event.reviews.count}
    end

    def latest_events
        self.events.last(10)
    end
end
