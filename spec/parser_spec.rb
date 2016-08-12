require_relative '../parser'

describe FlashcardParser do
  describe "#parse_file" do
    it "should take a path and return a deck of cards" do
      expect(FlashcardParser.parse_file("nighthawk_flashcard_data.txt")).to be_a Deck
    end
  end
end
