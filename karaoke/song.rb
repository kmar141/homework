class Song

  def initialize(artist, title)
    @artist = artist
    @title = title
  end

  def artist()
    return @artist
  end

  def title()
    return @title
  end

  def artist_and_track
    return "#{artist} - " + "#{title}"

  def number_of_songs()
    return @title.count
  end

  def add_songs_to_playlist(song)
    @playlist << song
  end
  
  end
end
