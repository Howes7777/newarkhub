class Event < ActiveRecord::Base
  attr_accessible :user_id, :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
  belongs_to :user


  validates :EventDescription, presence: true,
  								length: { minimum: 10}


  validates :user_id , presence: true

end
