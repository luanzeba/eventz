require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "should not save event without title" do
    event = Event.new(description: "Test description")
    assert_not event.save, "Saved the event without a title"
    assert event.errors.full_messages.include?("Title can't be blank")
  end

  test "should not save event without description" do
    event = Event.new(title: "Test Event")
    assert_not event.save, "Saved the event without a description"
    assert event.errors.full_messages.include?("Description can't be blank")
  end
end
