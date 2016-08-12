class Deck
  attr_reader :cards

  def initialize(cards=[])
    @cards = cards
  end

  def length
    @cards.length
  end

  def draw_card
    random = []
    @cards.each do |card|
      card.sleep.times do
        random << card
      end
    end
    random.sample
  end

  def learned?
    @cards.all? { |card| card.sleep == 1 }
end
