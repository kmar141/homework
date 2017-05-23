class Bear

  def initialize(name)
    @name = name
    @stomach = []
  end

  def bear_name()
    return @name
  end

  def bear_stomach_contents()
    return @stomach.count()
  end

  def bear_eats_fish(fish)
    @stomach << fish
  end

  def bear_roar
    return "Pic-a-nic baskets!"
  end
end

class River

  def initialize(name)
    @name = name
    @fish = []
  end

  def river_name()
     return @name
  end

  def fish_in_river()
    return @fish.count()
  end

  def fish_eaten()
  end

end

class Fish

  def initialize(name)
    @name = name
  end

  def fish_name()
    return @name
  end

end