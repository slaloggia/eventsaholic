class Vendor < ApplicationRecord
    has_many :event_vendors
    has_many :events, through: :event_vendors
end
