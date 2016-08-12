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
    until @deck.learned?
      @total += 1
      card = @deck.draw_card
      response = @viewer.show_front(@total,card.front)
      if card.answer?(response)
        @correct += 1
        @viewer.right_answer
        card.correct
      else
        @viewer.wrong_answer
        card.incorrect
      end
      @viewer.show_back(card.back)
    end
    @viewer.goodbye()
  end
end
