class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.date :startdate
      t.date :enddate
      t.time :eventtime
      t.integer :sessions
      t.decimal :cost
      t.text :EventDescription

      t.timestamps
    end
  end
end
