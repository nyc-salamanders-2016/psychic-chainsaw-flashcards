require_relative 'parser'
require_relative 'view'

class FlashcardController
  def initialize(path)
    @path = path
    @viewer = FlashcardViewer.new
    @deck = FlashcardParser.parse_file(@path)
    run
  end

  def run
    @viewer.display_greeting
    @deck.cards.each do |card|
      # binding.pry
      response = @viewer.show_front(card.front)
      if card.answer?(response)
        @viewer.right_answer
      else
        @viewer.wrong_answer
      end
      @viewer.show_back(card.back)
    end
    @viewer.goodbye
  end
end
