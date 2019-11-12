require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../rivers')
require_relative('../bears')

class BearTest < MiniTest::Test

  def setup()

    @bear1 = Bear.new("Jasper", :black)
    @bear2 = Bear.new("Neli", :grizzly)

    @river = River.new("Tay", @all_fish)
  end

  def test_bear_name
    assert_equal("Neli", @bear2.name)
  end

  def test_bear_type
    assert_equal(:black, @bear1.type)
  end

  def test_bear_stomach_empty
    assert_equal([], @bear2.stomach)
  end

  def test_eat_fish
    fish = Fish.new("Agamemnon")
    @bear2.stomach << fish
    assert_equal("Agamemnon", @bear2.stomach)
  end

  def test_eat_fish2
    fish = @river.catch_random_fish
    p fish
  end


end
