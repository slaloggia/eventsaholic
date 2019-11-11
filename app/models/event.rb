class Event < ApplicationRecord
    belongs_to :client
    belongs_to :venue
    has_many :reviews
    has_many :vendors
end
