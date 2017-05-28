class Room

  def initialize(name)
    @name = name
    @guests = []
    @playlist = []
  end

  def room_name()
    return @name
  end

  def guests_in_room
    return @guests.count()
  end

  def add_guest_to_room(guest)
    @guests << guest
  end

  def remove_guest_from_room
    @guests.shift
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

  def number_of_songs_in_playlist
    @playlist.count()
  end



end