class Board



  def initialize(size = 4)
    @grid = Array.new(size) { Array.new(size)}
    @size = size
    populate
  end

  def populate
    cards = Card.shuffled_cards(@size ** 2 / 2)
    @grid.each do |row|
      row.map! {|el| cards.pop }
    end
  end



end
