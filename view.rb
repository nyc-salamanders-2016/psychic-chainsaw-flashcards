

class FlashcardViewer
  def display_greeting
    system("clear")

    puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
    puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
    puts "MNMNM                                 MNMNM"
    puts "       Hello! Welcome to Flashcards!       "
    puts "MNMNM                                 MNMNM"
    puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
    puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
    puts "-=[ chainsaw ]=-  8/97
          .-----.
         /::::::|^^^^^^^^^^^^^^^^^^^^^^^^^^.
        |():::::| P . S . Y . C . H . I . C }
         \::::::|     C H A I N S A W      .'
          '-----'^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts ""
    puts ""
    sleep 2
  end

  def show_front(front_of_card)
    sleep 1.5
    system("clear")
    puts "-------------------------------------------------------------"
    puts " Question: #{front_of_card}"
    puts "-------------------------------------------------------------"
    STDIN.gets.chomp

  end

  def right_answer
    puts "***********Correct, well done!***********"
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
