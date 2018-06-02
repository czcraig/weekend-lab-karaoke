require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestRooms < Minitest::Test

 def setup
    @room = Rooms.new("Room A",0, ["Maggie May", "Free Love Freeway", "Smooth Criminal"])
    @guests = Guests.new("Chris Craig")
    @song = Songs.new("Heart of Gold", "Neil Young")
 end

 def test_room_has_name
  assert_equal("Room A", @room.room_name)
 end

 def test_number_of_people_using_room
  assert_equal(0, @room.number_of_guests_in_room)
 end

 def test_song_on_playlist
   assert_equal(["Maggie May", "Free Love Freeway", "Smooth Criminal"], @room.song_on_playlist)
 end

 def test_check_in_guest
   @room.check_guest_in(@guests)
   assert_equal(1, @room.number_of_guests_in_room)
 end

 def test_remove_guest
   @room.remove_guests(@guests)
   assert_equal(0, @room.number_of_guests_in_room)
 end




end
