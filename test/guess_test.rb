require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_guess_has_a_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Card, guess.card
  end

  def test_guess_has_a_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end

  def test_guess_is_true
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal true, guess.correct?
  end

  def test_guess_feedback_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_guess_feedback_incorrect
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect.", guess.feedback
  end
end
