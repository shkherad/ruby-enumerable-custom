# A simple representation of a playing card.
class Card
  include Comparable
  SUITS = %w(C D H S).freeze
  RANKS = [(2..10).to_a, %w(J Q K A)].flatten

  attr_reader :suit, :rank

  def initialize(rank, suit)
    fail ArgumentError,
         "Suit: '#{suit}' not in #{SUITS}" unless SUITS.include? suit
    fail ArgumentError,
         "Rank: '#{rank}' not in #{RANKS}" unless RANKS.include? rank

    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank}:#{suit}"
  end

  def <=> (other)

    suit_comparison = SUITS.index(suit) <=> SUITS.index(other.suit)
    rank_comparison = RANKS.index(rank) <=> RANKS.index(other.rank)
    #compare by suit
    if suit_comparison == 0
      rank_comparison
    else
      suit_comparison

  end


end

c1 = Card.new(5, "S")
c2 = Card.new(10
,"S")

puts c1 == c2
