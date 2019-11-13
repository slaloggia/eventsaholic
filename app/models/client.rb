class Client < ApplicationRecord
    has_many :events
    has_many :venues, through: :events
    has_many :vendors, through: :events

    has_secure_password

    validates_presence_of :first_name, :last_name, :username, :password, :password_confirmation
    validates :username, uniqueness: true
end
