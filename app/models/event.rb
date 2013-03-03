class Event < ActiveRecord::Base
  attr_accessible :EventDescription, :cost, :enddate, :eventname, :eventtime, :sessions, :startdate
end
