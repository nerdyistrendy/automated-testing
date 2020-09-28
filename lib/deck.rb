
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << card = Card.new(value, suit)
      end
    end
  end

  def draw
    # returns a card
    return @cards.pop

  end

  def shuffle
    puts "Cards shuffled!"
    return @cards.shuffle
  end

  def count
    puts "#{@cards.length} cards in the deck."
    return @cards.length
  end
end
