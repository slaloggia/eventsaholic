class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :content
      t.integer :event_id

      t.timestamps
    end
  end
end
