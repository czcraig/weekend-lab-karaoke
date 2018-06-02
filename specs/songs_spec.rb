require("minitest/autorun")
require_relative("../songs.rb")

class TestSongs < Minitest::Test

  def setup
    @song = Songs.new("Heart of Gold", "Neil Young")
  end

  def test_song_has_title()
     assert_equal("Heart of Gold", @song.title)
  end


  def test_song_has_artist
    assert_equal("Neil Young", @song.artist)
  end

end
