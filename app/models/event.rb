class Event < ActiveRecord::Base
  attr_accessible :user_id, :venue_id, :eventtype_id, :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
  belongs_to :user
  belongs_to :venue
  belongs_to :eventtype


  validates :EventDescription, presence: true,
  								length: { minimum: 10}


  validates :user_id , presence: true

  

end
