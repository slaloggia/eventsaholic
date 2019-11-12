class RemoveEventIdFromVendors < ActiveRecord::Migration[6.0]
  def change

    remove_column :vendors, :event_id, :integer
  end
end
