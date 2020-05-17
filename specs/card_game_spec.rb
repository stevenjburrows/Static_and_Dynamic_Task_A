require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')


class TestCardGame < Minitest::Test


  def setup
    @card1 = Card.new('Clubs', 5)
    @card2 = Card.new('Hearts', 1)
    @game1 = Card_game.new()


  end

  def test_ace

    assert_equal(true, @game1.checkforAce(@card2))
  end

  def test_hasnt_ace
    assert_equal(false, @game1.checkforAce(@card1))

  end

  def test_highest_card
    assert_equal(@card1, @game1.highest_card(@card1, @card2))
  end

  def test_cards_total_value
    @cards = [@card1, @card2]
    assert_equal("You have a total of 6" , @game1.cards_total(@cards))
  end


end
