class Organisation < ActiveRecord::Base
  attr_accessible :Address1, :Address2, :AddressCounty, :AddressTown, :Contact, :Email, :OrganisationName, :OtherInfo, :Phone, :Postcode, :Website

   has_many :events

   validates :OrganisationName, presence: true

end
