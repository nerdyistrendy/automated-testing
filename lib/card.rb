
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError.new("Invalid value") if value < 1 || value > 13
    raise ArgumentError.new("Invalid suit.") if !([:hearts, :spades, :clubs, :diamonds].include?(suit))

    @value = value
    @suit = suit

  end

  def value_to_name
    @card_name = ""
    case @value
    when 1
      @card_name  = "Ace"
    when 11
      @card_name  =  "Jack"
    when 12
      @card_name  = "Queen"
    when 13
      @card_name = "King"
    else
      @card_name = @value
    end
    return @card_name
  end

  def to_s
    value_to_name
    return "#{@card_name} of #{suit.to_s}"
  end

end

