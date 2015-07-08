class CreateScheduledPractices < ActiveRecord::Migration
  def change
    create_table :scheduled_practices do |t|
      t.references :practice, index: true
      t.datetime :start_time
      t.time :end_time
      t.text :info

      t.timestamps
    end
  end
end
