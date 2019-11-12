require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../bears')
require_relative('../rivers')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Apollo")
    @fish2 = Fish.new("Boomer")
    @fish3 = Fish.new("Helo")
    @fish4 = Fish.new("Hotdog")
    @fish5 = Fish.new("Husker")
    @fish6 = Fish.new("Starbuck")
    @all_fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
    @river = River.new("Tay", @all_fish)
  end

  def test_river_name()
    assert_equal("Tay", @river.name)
  end

  def test_count_river_fish()
    assert_equal(6, @river.count_fish)
  end

  def test_catch_random_fish()
    @river.catch_random_fish()
    assert_equal(5, @river.count_fish())
  end

end
