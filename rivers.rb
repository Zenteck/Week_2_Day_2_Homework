class River

  attr_accessor :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def count_fish
    return @fish.size
  end

  def catch_random_fish
    return @fish.shuffle!.delete_at(0)
  end

end
