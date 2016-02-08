class Card
  attr_reader :value

  def self.shuffled_cards(num_pairs)
    cards = []
    symbols = ("a".."z").to_a.shuffle
    num_pairs.times do
      sym =  symbols.pop
      2.times {cards << Card.new(sym)}
    end
    cards.shuffle
  end

  def initialize(value)
    @revealed = false
    @value = value
  end

  def hide
    @revealed = false
  end

  def reveal
    @revealed = true
  end

  def to_s
    @value
  end

  def ==(other_card)
    @value == other_card.value
  end
end
