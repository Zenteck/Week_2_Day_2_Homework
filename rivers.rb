class River

  attr_accessor :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def name
    return @name
  end

  def count_fish
    return @fish.size
  end

  def remove_random_fish
    @fish.shuffle!.delete_at(0)
  end
  
end
