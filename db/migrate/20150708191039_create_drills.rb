class CreateDrills < ActiveRecord::Migration
  def change
    create_table :drills do |t|
      t.references :practice, index: true
      t.string :name
      t.decimal :distance
      t.string :unit
      t.text :description

      t.timestamps
    end
  end
end
