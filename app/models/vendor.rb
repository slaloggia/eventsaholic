class Vendor < ApplicationRecord
    has_many :event_vendors
    has_many :events, through: :event_vendors

    def self.cater
        all.where(category: "Catering")
    end

    def self.music
        all.where(category: "Music")
    end

    def self.decor
        all.where(category: "Decor")
    end
end
