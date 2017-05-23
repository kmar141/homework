require "minitest/autorun"
require "minitest/rg"

require_relative "../ecosystem"

class TestEcosystem < Minitest::Test
  def setup()
    @amazon = River.new("Amazon River")
    @grizzly = Bear.new("Grizzly Bear")
    @goldy = Fish.new("Goldfish")
    @blinky = Fish.new("Blinky the Three-Eyed Fish")
  end

  def test_bear_name()
    assert_equal("Grizzly Bear", @grizzly.bear_name())
    assert_equal("Amazon River", @amazon.river_name())
    assert_equal("Goldfish", @goldy.fish_name())
    assert_equal("Blinky the Three-Eyed Fish", @blinky.fish_name)
  end

  def test_bear_eats_fish()
    @grizzly.bear_eats_fish(@goldy)
    assert_equal(1, @grizzly.bear_stomach_contents())
  end

  def test_bear_roar()
    assert_equal("Pic-a-nic baskets!", @grizzly.bear_roar)
  end
















end