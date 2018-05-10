require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/deck'
require './lib/card'
require './lib/guess'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_it_has_a_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_guess_is_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")

    assert_equal "3 of Hearts", round.guesses[0].response
  end

  def test_guesses_can_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")

    assert_equal 1, round.count
  end

  def test_first_round_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")

    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_it_can_increment_responses_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")

    assert_equal 1, round.number_correct
  end

  def test_next_current_card_in_round
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")

    assert_equal card_2, round.current_card
  end

  def test_next_current_card_in_round
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal "Jack of Diamonds", round.guesses[1].response
  end

  def test_guesses_count_increments
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal 2, round.index
  end

  def test_guesses_count_increments
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal "Incorrect.", round.guesses.last.feedback
  end

  def test_number_of_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal 1, round.number_correct
  end

  def test_the_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    guess_1 = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal 50, round.percent_correct
  end
end
