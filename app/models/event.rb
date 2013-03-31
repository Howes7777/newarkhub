class Event < ActiveRecord::Base
  attr_accessible :user_id, :venue_id, :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
  belongs_to :user
  belongs_to :venue


  validates :EventDescription, presence: true,
  								length: { minimum: 10}


  validates :user_id , presence: true

end
