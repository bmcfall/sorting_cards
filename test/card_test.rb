require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def test_card_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_card_has_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_card_has_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end
end