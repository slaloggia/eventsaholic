class RemoveTypeFromVenues < ActiveRecord::Migration[6.0]
  def change

    remove_column :venues, :type, :string
  end
end
