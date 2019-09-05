# frozen_string_literal: true

require 'colorize'
# class to get quetions for quiz
class Questions
  def start
    # Read the answer file into an array for use in a loop
    answers = File.readlines('./docs/answers')
    # Set player starting score
    @score = 0
    # set value of q(question)
    q = 1
    puts "answers: #{answers}"
    while q <= 27
      # Use a to access the 0-indexed array, and q to refer to the question
      a = q - 1
      answer = answers[a].strip
      # Read into an array the question file with end number matching value of q
      question = File.readlines("./docs/question_#{q}")
      # Output the question to screen
      puts question
      # debug
      #puts "answer: #{answer} for q: #{q}"
      input = gets.strip.downcase
      # Increment player score on correct answer
      @score += 1 if input == answer
      # Give visual feedback to player of correct/incorrect answer.
      puts input == answer ? 'You got it right!'.colorize(:green) : 'Nope, incorrect!'.colorize(:red)
      # Show current player score & indicate how many questions answered/remaining.
      puts "Your score:#{@score}. Currently on Question #{q}/27".colorize(:yellow)
      #  Add a small delay between questions.To allow player to see feedback.
      sleep(1)
      # Clear the screen to clean it up.
      system 'clear'
      # Show player their final score.
      puts "Your score is: #{@score}" if q >= 27
      q += 1
    end
    'Thanks for playing'
  end
end
