require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @card_3 = Card.new("5", "Diamonds")
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_can_hold_cards
    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_it_can_count_cards
    assert_equal 3, @deck.count
  end

  def test_it_can_sort
    skip
    assert_equal [card_2, card_1, card_3], @deck.sort_cards(deck_1)
  end
end
