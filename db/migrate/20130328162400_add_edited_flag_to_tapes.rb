class AddEditedFlagToTapes < ActiveRecord::Migration
  def change
    add_column :tapes, :edited, :int
  end
end
