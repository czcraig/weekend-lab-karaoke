class Songs
  attr_reader(:title, :artist)

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def transfer_song
    @title.pop
  end




















end
