require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../rivers')
require_relative('../bears')

class BearTest < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Jasper", :black)
    @bear2 = Bear.new("Neli", :grizzly)
  end

  def test_bear_name
    assert_equal("Neli", @bear2.bear_name)



end
