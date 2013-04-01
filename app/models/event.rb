class Event < ActiveRecord::Base
  attr_accessible :user_id, :venue_id, :eventtype_id, :organisation_id, :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
  belongs_to :user
  belongs_to :venue
  belongs_to :eventtype
  belongs_to :organisation


  validates :eventname, presence: true

  validates :venue_id, presence: true

  validates :organisation_id, presence: true

  validates :EventDescription, presence: true,
  								length: { minimum: 10}


  validates :eventtype_id, presence: true
  validates :user_id , presence: true

  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :eventtime, presence: true

end
