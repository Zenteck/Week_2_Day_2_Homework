require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../rivers')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Showboat")
  end

  def test_fish_name
    assert_equal("Showboat", @fish.name)
  end


end
