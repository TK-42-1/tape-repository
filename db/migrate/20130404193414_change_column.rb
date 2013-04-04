class ChangeColumn < ActiveRecord::Migration
  def change
    rename_column :tapes, :location, :location_id
  end
end
