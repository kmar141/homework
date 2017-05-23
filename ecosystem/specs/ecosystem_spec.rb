require "minitest/autorun"
require "minitest/rg"

require_relative "../ecosystem"

class TestEcosystem < Minitest::Test
  def setup()
    # @amazon = River.new("Amazon River", fish)
    @grizzly = Bear.new("Grizzly Bear")
    # @goldy = Fish.new("Goldfish")
  end

  def test_bear_name()
    assert_equal("Grizzly Bear", @grizzly)
  end

end