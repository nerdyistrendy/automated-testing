require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  describe "You can create a deck instance" do

    it "Can be created" do
      deck = Deck.new
        expect(deck).must_be_instance_of Deck
      end
  end


  describe "You can draw a card" do

    it "draws a card and return the card" do
      deck = Deck.new
      before_length = deck.cards.length

      expect(deck.draw).must_be_instance_of Card
      expect(deck.cards.length).must_equal (before_length - 1)
    end

    it "the card is gone" do
      deck = Deck.new

      expect(deck.cards.include?(deck.draw)).must_equal false
    end

    it "can't draw when no card left" do
      deck = Deck.new
      52.times do
        deck.draw
      end
      expect(deck.draw).must_be_nil
    end

  end

  describe "You can count the numbers of cards" do

    it "count the deck" do
      deck = Deck.new
      deck.cards.delete_if {|card| card.value == 4}

      expect(deck.cards.length).must_equal 48
    end
  end

  describe "shuffle" do

    it "responds to shuffle" do
      deck = Deck.new
      expect(deck).must_respond_to :shuffle
    end
  end
end
