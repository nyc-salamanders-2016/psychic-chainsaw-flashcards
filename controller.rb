require_relative 'parser'
require_relative 'view'

class FlashcardController
  def initialize(path)
    @path = path
    @viewer = FlashcardViewer.new
    @deck = FlashcardParser.parse_file(@path)
    @correct = 0
    @total = 0
    run
  end

  def run
    @viewer.display_greeting
    @deck.cards.each do |card|
      # binding.pry
      @total += 1
      response = @viewer.show_front(@total,card.front)
      if card.answer?(response)
        @correct += 1
        @viewer.right_answer
      else
        @viewer.wrong_answer
        @viewer.show_back(card.back)
      end
    end
    @viewer.goodbye()
  end
end
