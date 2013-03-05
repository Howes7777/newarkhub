class Event < ActiveRecord::Base
  attr_accessible :user_id, :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
  belongs_to :user
end
