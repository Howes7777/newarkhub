class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :OrganisationName
      t.string :Address1
      t.string :Address2
      t.string :AddressTown
      t.string :AddressCounty
      t.string :Postcode
      t.string :Email
      t.string :Phone
      t.string :Contact
      t.string :Website
      t.text :OtherInfo

      t.timestamps
    end
  end
end
