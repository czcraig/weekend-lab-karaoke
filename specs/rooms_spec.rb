require("minitest/autorun")
require_relative("../rooms.rb")

class TestRooms < Minitest::Test

 def setup
    @room = Rooms.new("Room A", 2)
 end

 def test_room_has_name
  assert_equal("Room A", @room.room_name)
 end

 def test_number_of_people_using_room
  assert_equal(2, @room.number_of_people_currently_using_room)
 end





end
