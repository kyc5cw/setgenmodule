class CreatePacedDrills < ActiveRecord::Migration
  def change
    create_table :paced_drills do |t|
      t.references :practice, index: true
      t.references :drill, index: true
      t.string :pace
      t.string :distance
      t.string :pacing
      t.decimal :order
      t.string :group

      t.timestamps
    end
  end
end
