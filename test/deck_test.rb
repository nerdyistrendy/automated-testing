require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  before do
    @deck = Deck.new
  end

  describe "You can create a deck instance" do

    it "Can be created" do
        expect(@deck).must_be_instance_of Deck
      end
  end

  describe "You can draw a card" do

    it "draws a card and return the card" do

      expect(@deck.draw).must_be_instance_of Card

    end

    it "the card is gone" do
      before_length = @deck.cards.length

      expect(@deck.cards.include?(@deck.draw)).must_equal false
      expect(@deck.cards.length).must_equal (before_length - 1)
    end

    it "can't draw when no card left" do
      52.times do
        @deck.draw
      end
      expect(@deck.draw).must_be_nil
    end

  end

  describe "You can count the numbers of cards" do

    it "count the deck" do
      @deck.cards.delete_if {|card| card.value == 4}

      expect(@deck.cards.length).must_equal 48
    end
  end

  describe "shuffle" do

    it "responds to shuffle" do
      expect(@deck).must_respond_to :shuffle
    end
  end
end
