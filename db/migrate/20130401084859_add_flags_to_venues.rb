class AddFlagsToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :activeflag, :boolean
  	add_column :venues, :hireable, :boolean
	add_index :venues, :activeflag
	add_index :venues, :hireable
  end
end
