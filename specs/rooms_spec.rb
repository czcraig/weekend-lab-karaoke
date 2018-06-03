require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")

class TestRooms < Minitest::Test

 def setup
    @guest1 = Guests.new("Chris Craig")
    @guest2 = Guests.new("Michael Jackson")
    @song1 = Songs.new("Heart of Gold", "Neil Young")
    @song2 = Songs.new("Good Vibrations", "The Beach Boys")
    @song3 = Songs.new("Sunny Afternoon", "The Kinks")

    @room = Rooms.new("Room A",[@guest1, @guest2], [@song1, @song2])

 end

 def test_room_has_name
  assert_equal("Room A", @room.room_name)
 end

 def test_number_of_people_using_room
  assert_equal(2, @room.number_of_guests_in_room())
 end

 def test_song_on_playlist
   assert_equal([@song1, @song2],  @room.songs_on_playlist())
 end

 def test_check_in_guest
   @room.check_guest_in(@guests)
   assert_equal(3, @room.number_of_guests_in_room())
 end

 def test_remove_guest
   @room.remove_guests(@guests)
   assert_equal(2, @room.number_of_guests_in_room())
 end

 def test_number_of_songs_on_playlist
   assert_equal(2, @room.number_of_songs_on_playlist())
 end


 def test_number_of_songs_on_playlist
  @room.add_song_to_playlist(@song)
  assert_equal(3, @room.number_of_songs_on_playlist)
 end

 # def test_add_song_to_playlist
 #  @room.add_song(@song)
 #  assert_equal("Maggie May", "Heart of Gold", @room.number_of_songs_on_playlist)
 # end


end
