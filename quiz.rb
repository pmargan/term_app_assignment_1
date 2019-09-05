# frozen_string_literal: true

require 'artii'
require 'colorize'
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
    a = Artii::Base.new
    puts a.asciify('QUIZIT').colorize(:green)
    @welcome = "Welcome Developer, you ready to play?\n Enter 'yes' or 'no'"
    puts @welcome
    yn = gets.chomp.downcase
    if yn != 'yes'
      puts 'Okay goodbye for now'.colorize(:green)
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
