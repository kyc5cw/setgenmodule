class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :author
      t.decimal :duration
      t.text :notes

      t.timestamps
    end
  end
end
