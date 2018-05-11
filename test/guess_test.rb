require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def setup
    card = Card.new("10", "Hearts")
    @guess = Guess.new("10 of Hearts", card)
  end

  def test_guess_exists
    assert_instance_of Guess, @guess
  end

  def test_guess_created_with_card
    assert_instance_of Card, @guess.card
  end

  #Two Thumbs Up!  Excellent!
  def test_guess_has_a_response
    assert_equal "10 of Hearts", @guess.response
  end

  def test_guess_is_true
    assert_equal true, @guess.correct?
  end

  def test_guess_is_false
    card = Card.new("10", "Hearts")
    guess = Guess.new("Jack of Spades", card)

    refute guess.correct?
  end

  def test_guess_feedback_correct
    assert_equal "Correct!", @guess.feedback
  end

  def test_guess_feedback_incorrect
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect.", guess.feedback
  end
end
