class Venue < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscounty, :addresstown, :computers, :ddaaccess, :email, :otherinfo, :phone, :postcode, :rentalcost, :toilets, :venuename, :website, :wifi
  
  has_many :events

    def Venue_details
  	venuename + " , " + address1 + " , " + postcode
    end
end
