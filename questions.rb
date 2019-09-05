# frozen_string_literal: true

require 'colorize'
# class to get quetions for quiz
class Questions
  def start
    answers = File.readlines('./docs/answers')
    @score = 0
    q = 1
    while q <= 27
      a = q - 1
      answer = answers[a]
      question = File.readlines("./docs/question_#{q}")
      puts question
      input = gets.downcase
      @score += 1 if input == answer
      puts input == answer ? 'You got it right!'.colorize(:green) : 'Nope, incorrect!'.colorize(:red)
      puts "Your score:#{@score}. Currently on Question #{q}/27".colorize(:yellow)
      sleep(1)
      system 'clear'
      puts "Your score is: #{@score}" if q >= 27
      q += 1
    end
    'Thanks for playing'
  end
end
