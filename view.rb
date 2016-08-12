

class FlashcardViewer
  def display_greeting
    puts "Hello! Welcome to Flashcards!"
  end

  def show_front(front_of_card)
    puts "Question: #{front_of_card}"
    STDIN.gets.chomp
  end

  def right_answer
    puts "Correct, well done!"
  end

  def wrong_answer
    puts "Nope!"
  end

  def show_back(back_of_card)
    puts back_of_card
  end

  def goodbye
    puts "That's all I've got, goodbye!"
  end
end
