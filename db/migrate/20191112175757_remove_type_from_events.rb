class RemoveTypeFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :type, :string
  end
end
