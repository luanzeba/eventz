require "test_helper"

class RegistrationTest < ActiveSupport::TestCase
  test "should not save duplicate registrations" do
    user = users(:one)
    event = events(:one)

    Registration.create(user: user, event: event)
    registration = Registration.new(user: user, event: event)
    assert_not registration.save, "Saved duplicate registration"
    assert_equal ["User has already registered for this event"], registration.errors.full_messages
  end
end
