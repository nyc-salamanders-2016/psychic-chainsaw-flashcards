require_relative 'parser'

class FlashcardController
  def initialize(path)
    @path = path
    @viewer = FlashcardViewer.new
    @deck = Parser.parse_file(@path)
    run
  end

  def run
    @viewer.display_greeting
    @deck.cards.each do |card|
      response = @viewer.show_front(card)
      if card.answer?(response)
        @viewer.right_answer
      else
        @viewer.wrong_answer
      end
      @viewer.show_back(card)
    end
    @viewer.goodbye
  end
end
