class Venue < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscounty, :addresstown, :computers, :ddaaccess, :email, :otherinfo, :phone, :postcode, :rentalcost, :toilets, :venuename, :website, :wifi, :hireable
  
  has_many :events

  	validates :address1, presence: true
	validates :postcode, presence: true
	validates :venuename, presence: true

    def Venue_details
  	venuename + " , " + address1 + " , " + postcode
    end
end
