class Eventtype < ActiveRecord::Base
  attr_accessible :eventtypedescription, :eventtypename

  has_many :events

  validates :eventtypedescription, presence: true
  validates :eventtypename , presence: true

end
