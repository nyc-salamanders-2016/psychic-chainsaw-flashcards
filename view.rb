

class FlashcardViewer
  def display_greeting
    puts "Hello! Welcome to Flashcards!"
  end

  def show_front(number, front_of_card)
    puts "Question ##{number}: #{front_of_card}"
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

  def goodbye(correct, total)
    puts judge(correct,total) + " #{correct} out of #{total}!"
    puts "That's all I've got, goodbye!"
  end

  def judge(correct, total)
    bad  = proc { |n| n < 0.3 }
    meh  = proc { |n| n < 0.6 }
    good = proc { |n| n < 0.99 }
    case correct / total.to_f
    when bad
      "You can do better then that..."
    when meh
      "Not too shabby."
    when good
      "Nicely done!"
    else
      "Perfect!"
    end
  end
end
