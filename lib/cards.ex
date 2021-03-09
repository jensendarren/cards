defmodule Cards do
  @moduledoc """
  Creates, shffles and deals from a deck of cards
  """

  @doc """
  create_deck

  ## Examples

      iex> Cards.create_deck
      # a deck of cards

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suites = ["Spades", "Hearts", "Diamonds", "Clubs"]

    for suit <- suites, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
  shuffle(deck)

  ## Examples

      iex> Cards.shuffle(deck)
      # a suffled deck of cards

  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards should
    be in the hand.

  ## Examples

      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _} -> "hat file does not exist"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
