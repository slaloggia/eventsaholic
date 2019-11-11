class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :capacity
      t.string :type

      t.timestamps
    end
  end
end
