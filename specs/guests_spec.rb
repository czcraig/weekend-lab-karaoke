require("minitest/autorun")
require_relative("../guests.rb")

class TestGuests < Minitest::Test


  def setup
     @guests = Guests.new("Craig Party", 4)
  end

  def test_guest_party_name
   assert_equal("Craig Party", @guests.guest_party_name)
  end

  def test_number_of_guests
    assert_equal(4, @guests.number_of_guests)
  end










end
