'class CreateDrills < ActiveRecord::Migration
  def change
    create_table :drills do |t|
      t.string :name
      t.string :unit
      t.text :description

      t.timestamps
    end
  end
end
