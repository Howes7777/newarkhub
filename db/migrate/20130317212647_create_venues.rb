class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venuename
      t.string :address1
      t.string :address2
      t.string :addresstown
      t.string :addresscounty
      t.string :postcode
      t.string :email
      t.string :phone
      t.string :website
      t.boolean :ddaaccess
      t.integer :computers
      t.boolean :toilets
      t.boolean :wifi
      t.decimal :rentalcost
      t.text :otherinfo

      t.timestamps
    end
  end
end
