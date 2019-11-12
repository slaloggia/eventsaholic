class Event < ApplicationRecord
    belongs_to :client
    belongs_to :venue
    has_many :reviews
    has_many :event_vendors
    has_many :vendors, through: :event_vendors
end
