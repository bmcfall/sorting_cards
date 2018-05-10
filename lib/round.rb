class Round

  attr_reader   :deck,
                :guesses,
                :number_correct,
                :index

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @index = 0
  end

  def current_card
    @deck.cards[@index]
  end

  def record_guess(response)
    guess_recorded = Guess.new(response, current_card)
    guesses << guess_recorded
    if guess_recorded.correct?
      @number_correct += 1
    end
    @index += 1
  end

  def count
    guesses.count
  end

  def percent_correct
    number_correct.to_f/@guesses.count * 100
  end
end
