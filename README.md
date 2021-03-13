# Cards

## Running the application

To run, at the terminal do the following:

```
iex -S mix
iex> Cards.create_hand(1)
# creates a deck, shuffles the deck and deals one card out
```

## Expected output

In the terminal you will see a tuple returned. The first tuple element is an array containing the delt cards for your hand. The second tuple element is an array containing the remaining hands in the deck. For example running `Cards.create_hand(5)` will return 5 cards in the first tuple and the remaining cards of the deck in the second tuple element.

**Note** for this example app we only have 20 cards created in a deck:

```
iex> Cards.create_hand(5)
iex> {["Three of Diamonds", "Ace of Hearts", "Ace of Clubs", "Five of Spades",
  "Three of Clubs"],
 ["Ace of Diamonds", "Two of Spades", "Three of Hearts", "Two of Diamonds",
  "Four of Diamonds", "Four of Hearts", "Five of Diamonds", "Four of Spades",
  "Three of Spades", "Five of Hearts", "Four of Clubs", "Two of Clubs",
  "Two of Hearts", "Ace of Spades", "Five of Clubs"]}
```

## Documentation

The code comes with annotated documentation. To generate the documentation run:

```
mix docs
```

The output should be:

```
Generating docs...
View "html" docs at "doc/index.html"
View "epub" docs at "doc/cards.epub"
```

Now you can open the html docs as follows:

```
open doc/index.html
```

## Unit Tests

The code comes with some basic [Unit Tests](./test/cards_test.exs) to give you an idea how to write tests in Elixir.

The tests can be run as follows:

```
mix test --trace
```

Which should output the following when the tests are passing:

```
CardsTest [test/cards_test.exs]
  * doctest Cards.create_deck/0 (1) (0.01ms) [L#3]
  * doctest Cards.deal/2 (2) (0.03ms) [L#3]
  * test creates a new deck of cards (0.01ms) [L#5]
  * test shuffling a pack of cards returns a random order of the same cards (0.05ms) [L#14]
  * test number of cards in the deck should be 20 (0.01ms) [L#9]

Finished in 0.07 seconds
2 doctests, 3 tests, 0 failures
```

Note that it *includes doctests* which basically **run tests for all code examples included in the annotated documentation** of the code!

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cards](https://hexdocs.pm/cards).

