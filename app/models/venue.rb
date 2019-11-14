class Venue < ApplicationRecord
    has_many :events
    has_many :clients, through: :events
    has_many :vendors, through: :events
    has_many :reviews, through: :events


    def self.search(search)
        Venue.where("capacity > ?", search)
    end

    def self.featured_venue
        self.all.max_by{|venue| venue.events.count}
    end

    def self.logan
        Venue.where(location: "Logan Square")
    end

    def self.river
        Venue.where(location: "River North")
    end

    def self.west
        Venue.where(location: "West Side")
    end

    def latest_events
        self.events.limit(10)
    end

    def all_events
        self.events
    end

    
      
end
