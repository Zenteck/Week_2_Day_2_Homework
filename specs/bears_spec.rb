require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../rivers.rb')
require_relative('../bears.rb')

class BearTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Apollo")
    @fish2 = Fish.new("Boomer")
    @fish3 = Fish.new("Helo")
    @fish4 = Fish.new("Hotdog")
    @fish5 = Fish.new("Husker")
    @fish6 = Fish.new("Starbuck")
    @all_fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
    @river = River.new("Tay", @all_fish)
    @bear1 = Bear.new("Jasper", :black)
    @bear2 = Bear.new("Neli", :grizzly)

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

  # def test_eat_fish
  #   fish = @fish1.name
  #   @bear2.stomach.push(fish)
  #   assert_equal(["Apollo"], @bear2.stomach)
  # end
  #I am eating the fish's name

  # def test_eat_fish
  #   @bear2.eat_fish
  #   assert_equal(["Apollo"], @bear2.stomach)
  # end

  #Apparently these needed all the fish defined here to....

  def test_eat_fish()
    @bear1.eat_fish(@river.remove_random_fish)
    assert_equal(1, @bear1.food_count)
    assert_equal(5, @river.count_fish)
    # assert_equal("Husker", @bear1.inspect_stomach)
    #This function only works 1/6 times run.
  end

  def test_bear_roar
    assert_equal("Rargh!", @bear1.bear_roar)
  end


end
