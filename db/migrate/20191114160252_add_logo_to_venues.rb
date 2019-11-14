class AddLogoToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :logo, :string
  end
end
