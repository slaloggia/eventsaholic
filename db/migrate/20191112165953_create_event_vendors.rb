class CreateEventVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :event_vendors do |t|
      t.integer :event_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
