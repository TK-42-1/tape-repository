class CreateTapes < ActiveRecord::Migration
  def change
    create_table :tapes do |t|
      t.string :number
      t.string :description

      t.timestamps
    end
  end
end
