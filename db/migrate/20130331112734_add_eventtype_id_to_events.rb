class AddEventtypeIdToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :eventtype_id, :integer
  	add_index :events, :eventtype_id
  end
end
