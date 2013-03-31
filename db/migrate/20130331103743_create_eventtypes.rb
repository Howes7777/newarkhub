class CreateEventtypes < ActiveRecord::Migration
  def change
    create_table :eventtypes do |t|
      t.string :eventtypename
      t.text :eventtypedescription

      t.timestamps
    end
  end
end
