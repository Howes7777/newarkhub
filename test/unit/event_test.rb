require 'test_helper'

class EventTest < ActiveSupport::TestCase

	test "that an event requires EventDescription"  do
		event = Event.new
		assert !event.save
		assert !event.errors[:EventDescription].empty?
	end

	test "that an event description is at least 10 letters" do
		event = Event.new
		event.EventDescription= "ABCDE1234"
		assert !event.save
		assert !event.errors[:EventDescription].empty?
	end	

	test "that an event has a user id" do
		event = Event.new
		event.EventDescription = "Testing 1234567890"
		assert !event.save
		assert !event.errors[:user_id].empty?
	end
end

