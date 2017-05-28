require "minitest/autorun"
require "minitest/rg"

require_relative "../song"

class TestSong < Minitest::Test
  def setup()
    @ken_theme = Song.new("Street Fighter", "Ken's Theme")
    @easy_lover = Song.new("Phil Collins", "Easy Lover")
  end

  def test_artist_name
    assert_equal("Street Fighter", @ken_theme.artist)
  end

  def test_song_name()
    assert_equal("Street Fighter - Ken's Theme", @ken_theme.artist_and_track)
  end

end

