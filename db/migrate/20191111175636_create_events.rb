class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :type
      t.integer :client_id
      t.integer :venue_id
      t.date :date

      t.timestamps
    end
  end
end
