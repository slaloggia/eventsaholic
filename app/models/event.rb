class Event < ApplicationRecord
    attr_accessor :first_vendor_id, :second_vendor_id, :third_vendor_id

    belongs_to :client
    belongs_to :venue
    has_many :reviews
    has_many :event_vendors
    has_many :vendors, through: :event_vendors
    validates :title, presence: true
    accepts_nested_attributes_for :event_vendors
end
