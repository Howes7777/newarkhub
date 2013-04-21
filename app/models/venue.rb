class Venue < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscounty, :addresstown, :computers, :ddaaccess, :email, :otherinfo, :phone, :postcode, :rentalcost, :toilets, :venuename, :website, :wifi, :hireable, :photo

  has_many :events

  validates :address1, presence: true
	validates :postcode, presence: true
	validates :venuename, presence: true

    def Venue_details
  	venuename + " , " + address1 + " , " + postcode
    end

    #paperclip
    has_attached_file :photo,
       :styles => {
       :thumb => "100x100#",
       :small => "400x400>" }
end
