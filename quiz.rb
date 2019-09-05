# frozen_string_literal: true

require_relative './leaderboard'
require_relative './rules'
require_relative './questions'
require_relative './player'
# main class for quiz
class Quiz
  include Rules
  include Leaderboard

  def initialize
    show_rules
    sleep(2)
    @welcome = "Welcome Developer, you ready to play?\n Enter 'yes' or 'no'"
    puts @welcome
    yn = gets.chomp.downcase
    if yn != 'yes'
      puts 'Okay goodbye for now'
      exit
    else
      @play = Player.new.name
      questions = Questions.new
      questions.start
    end
    leaderboard
  end
end
Quiz.new
