class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def check_bear_stomach
    return @stomach.size
  end

  def eat_fish(catch)
    @stomach << catch
  end

end
