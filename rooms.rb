class Rooms
 attr_reader(:room_name, :number_of_people_currently_using_room, :songs_on_playlist)

 def initialize(room_name, number_of_guests_in_room,  songs_on_playlist)
   @room_name = room_name
    @guests_using_room = number_of_guests_in_room
   @songs_on_playlist = songs_on_playlist
 end

 def number_of_guests_in_room
    @guests_using_room.length()
 end

 def check_guest_in(guests)
    @guests_using_room << guests
 end

 def remove_guests(guests)
    @guests_using_room.delete(guests)
 end

 def number_of_songs_on_playlist
   @songs_on_playlist.length
 end


 def add_song_to_playlist(song)
    @songs_on_playlist << song
 end

 # def add_song(song)
 #   @song_playlist << song
 # end




end
