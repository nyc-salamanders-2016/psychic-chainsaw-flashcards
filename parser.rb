require_relative 'deck'
require_relative 'card'
require 'pry'

module FlashcardParser
  def self.parse_file(filename)
    #question\nanswer\n\n
    cards = File.readlines(filename,"\n\n").map { |card_info| parse_card(card_info)}
    Deck.new(cards)
  end

  private
  def self.parse_card(card_info)
    # binding.pry
    front, back = card_info.match(/\A(.*)\n(.*)\n\n?\z/)[1,2]
    Card.new(front: front, back: back)
  end
end
