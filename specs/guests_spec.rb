require("minitest/autorun")
require_relative("../guests.rb")


class TestGuests < Minitest::Test


  def setup
     @guests = Guests.new("Chris Craig")
  end

  def test_guest_party_name
   assert_equal("Chris Craig",   @guests.guest_name)
  end











end
