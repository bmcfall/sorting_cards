class Guess

  attr_reader :response,
              :card

  def initialize(response, card)
    @response = response
    @card     = card
  end

  def correct?
    if card.fancy_output == response
      true
    else
      false
    end
  end

  def feedback
    if correct? == false
      "Incorrect."
    else
      "Correct!"
    end
  end
end
