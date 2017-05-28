require "minitest/autorun"
require "minitest/rg"

require_relative "../guest"

class TestGuest < Minitest::Test
  def setup()
    @pip = Guest.new("Pip", "Osmond")
    @woodrow = Guest.new("Woodrow", "Wilson")
  end

  def test_first_name
    assert_equal("Pip", @pip.first_name)
    assert_equal("Woodrow", @woodrow.first_name)
  end

  def test_song_name()
    assert_equal("Pip Osmond", @pip.full_name)
    assert_equal("Woodrow Wilson", @woodrow.full_name)
  end

end