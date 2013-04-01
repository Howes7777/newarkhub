class AddOrganisationIdToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :organisation_id, :integer
  	add_index :events, :organisation_id
  end
end
