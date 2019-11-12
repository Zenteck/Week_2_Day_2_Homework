class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    return @stomach.size
  end

  def eat_fish(catch)
    @stomach.push(catch)
  end

  def bear_roar
    return "Rargh!"
  end

end
