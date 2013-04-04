class AddLocationToTape < ActiveRecord::Migration
  def change
    add_column :tapes, :location, :string
  end
end
