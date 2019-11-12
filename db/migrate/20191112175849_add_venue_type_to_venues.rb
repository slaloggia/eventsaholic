class AddVenueTypeToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :venue_type, :string
  end
end
