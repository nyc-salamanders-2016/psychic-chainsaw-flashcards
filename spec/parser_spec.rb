require_relative '../parser'

describe Parser do
  describe "#parse_file" do
    it "should take a path and return a deck of cards" do
      expect(Parser.parse_file("nighthawk_flashcard_data.txt")).to be_a FlashcardDeck
    end
  end
end
