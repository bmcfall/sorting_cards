class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

=begin
  #bubble sort method - not functional
  def sort_cards(deck)
    sort_three = deck.length

    loop do
      #[card_3.value, card_2.value, card_1.value]
      #[card_2.value, card_3.value, card_1.value]
      #[card_2.value, card_1.value, card_3.value]
      #[card_1.value, card_2.value, card_3.value]

      #Checks to see if an item is false; conditional used to break out of loop.
      swapped = false
      index = cards.@value
      #Total number of elements in array - 1.
      (sort_three - 1).times do |index|

        #Accessing an element in the array with iterator, i is the .
        #If the sort_three.value of
        if sort_three[index] > sort_three[index + 1]
          sort_three[index], array[index + 1] = sort_three[index + 1], sort_three[index]
          swapped = true
        end
      end
      break if not swapped

    end
    sort_three
  end
=end

end
