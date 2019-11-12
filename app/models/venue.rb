class Venue < ApplicationRecord
    has_many :events
    has_many :clients, through: :events
    has_many :vendors, through: :events
    has_many :reviews, through: :events


    def self.search(search)
        Venue.where("capacity > ?", search)
    end
end
