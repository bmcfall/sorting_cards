class Guess

  attr_reader :response,
              :card,
              :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suit}"
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
