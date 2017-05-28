require "minitest/autorun"
require "minitest/rg"

require_relative "../room"

class TestRoom < Minitest::Test
  def setup()
    @gold = Room.new("Gold Room")
    @silver = Room.new("Silver Room")
    @guestlist = []
  end

  def test_room_name
    assert_equal("Gold Room", @gold.room_name())
    assert_equal("Silver Room", @silver.room_name())
  end

  def test_add_guest_to_room()
    @gold.add_guest_to_room(@pip)
    assert_equal(1, @gold.guests_in_room())
  end

  def test_remove_guest_from_room()
    @gold.add_guest_to_room(@pip)
    @gold.add_guest_to_room(@woodrow)
    @gold.remove_guest_from_room()
    assert_equal(1, @gold.guests_in_room())
  end

  def test_add_song_to_playlist()
    @silver.add_song_to_playlist(@ken_theme)
    @silver.add_song_to_playlist(@easy_lover)
    assert_equal(2, @silver.number_of_songs_in_playlist())
  end

end