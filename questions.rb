# frozen_string_literal: true

# class to get quetions for quiz
class Questions
  def start
    answers = File.readlines('./docs/answers')
    q = 1
    while q <= 27
      a = q - 1
      answer = answers[a]
      question = File.readlines("./docs/question_#{q}")
      puts question
      input = gets.downcase
      puts input == answer ? 'You got it right!' : 'Nope, incorrect!'
      sleep(1.25)
      system 'clear'
      # TODO: do stuff to scores
      q += 1
    end
  end
end
