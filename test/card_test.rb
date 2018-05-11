require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def setup
    @card = Card.new("Ace", "Spades")
  end

  def test_card_exists
    assert_instance_of Card, @card
  end

  def test_card_attributes
    assert_equal "Ace", @card.value
    assert_equal "Spades", @card.suit
  end

  def test_card_has_pretty_output
    assert_equal "Ace of Spades", @card.fancy_output
  end

  def test_a_card_has_different_values
    card = Card.new("Queen", "Hearts")

    assert_equal "Queen", card.value
    assert_equal "Hearts", card.suit
  end
end
