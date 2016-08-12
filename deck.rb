require_relative 'parser'

class Deck
  include FlashcardParser
  attr_reader :cards

  def initialize
    @cards = []
  end
end
