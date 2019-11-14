class Client < ApplicationRecord
	has_many :events
  has_many :venues, through: :events
  has_many :vendors, through: :events

	has_secure_password

  validates_presence_of :first_name, :last_name, :username, :password, :password_confirmation
	validates :username, uniqueness: true
	
	def all_events
		Event.all.select { |event| event.client == self }
	end

	def upcoming_events
		all_events.select { |event| event.date >= Date.today }
	end

	def past_events
		all_events.select { |event| event.date < Date.today }
	end

end
