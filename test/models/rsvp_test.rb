require 'test_helper'

class RsvpTest < ActiveSupport::TestCase
   def setup
    @rsvp=Rsvp.new(attending:"true", user_id:"5", id:"1",)
   end
  

  test "rsvp should be valid" do
    assert @rsvp.valid?, @rsvp.errors.full_messages.to_sentence
  end
end
