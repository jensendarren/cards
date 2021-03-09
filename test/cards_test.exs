defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a new deck of cards" do
    assert Cards.create_deck == ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades", "Ace of Hearts", "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds", "Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs", "Five of Clubs"]
  end

  test "number of cards in the deck should be 20" do
    deck = Cards.create_deck
    assert length(deck) == 20
  end

  test "shuffling a pack of cards returns a random order of the same cards" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
  end
end
