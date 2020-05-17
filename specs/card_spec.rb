require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card')


class TestCard < Minitest::Test

  def setup
    @card1 = Card.new('Clubs', 5)

  end

  def test_suit
    assert_equal('Clubs', @card1.suit)
  end

  def  test_value
    assert_equal(5, @card1.value)
  end

  end
