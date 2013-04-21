class AddPhotoToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :photo_file_name, :string
    add_column :venues, :photo_content_type, :string
    add_column :venues, :photo_file_size, :integer
  end
end
