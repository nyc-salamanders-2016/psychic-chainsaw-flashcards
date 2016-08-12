

class FlashcardViewer
  def display_greeting
    system("clear")
    counter = 0
      until counter == 20
        puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
        puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
        puts "MNMNM                                 MNMNM"
        puts "       Hello! Welcome to Flashcards!       "
        puts "MNMNM                                 MNMNM"
        puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
        puts "MNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM"
        puts "
          .-----.
         /::::::|^^^^^^^^^^^^^^^^^^^^^^^^^^.
        |():::::| P . S . Y . C . H . I . C }
         \::::::|     C H A I N S A W      .'
          '-----'^^^^^^^^^^^^^^^^^^^^^^^^^"
        puts ""
        puts ""
        sleep 0.2
        system("clear")

        puts "NMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMN"
        puts "NMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMN"
        puts "NMNMN                                 NMNMN"
        puts "       Hello! Welcome to Flashcards!       "
        puts "NMNMN                                 NMNMN"
        puts "NMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMN"
        puts "NMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMN"
        puts "
      .-----.
     /::::::|vvvvvvvvvvvvvvvvvvvvvvvvvv.
    |():::::| P . S . Y . C . H . I . C }
     \::::::|     C H A I N S A W      .'
      '-----'vvvvvvvvvvvvvvvvvvvvvvvvv"
        puts ""
        puts ""
        sleep 0.2
        system("clear")
        counter += 1
    end
  end

  def show_front(number, front_of_card)
    sleep 1.5
    system("clear")
    puts "-------------------------------------------------------------"
    puts " Question ##{number}: #{front_of_card}"
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
