class AddEditedFlagToTapes < ActiveRecord::Migration
  def change
    remove_column :tapes, :edited, :int
  end
end
