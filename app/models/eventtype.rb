class Eventtype < ActiveRecord::Base
  attr_accessible :eventtypedescription, :eventtypename

  has_many :events
end
