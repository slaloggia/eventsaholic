class Client < ApplicationRecord
    has_many :events
    has_many :venues, through: :events
    has_many :vendors, through: :events
end
