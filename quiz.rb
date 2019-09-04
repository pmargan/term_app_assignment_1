# frozen_string_literal: true

require_relative './rules'
require_relative './questions'
require_relative './player'
# main class for quiz
class Quiz
  include Rules

  def initialize   
    show_rules
    @welcome = "Welcome Developer, you ready to play?\n Enter 'yes' or 'no'"
    puts @welcome
    yn = gets.chomp.downcase
    if yn != 'yes'
      puts 'Okay goodbye for now'
      exit
    else
      @play = Player.new.name
      #TODO add player name to list of players
      questions = Questions.new
      questions.start
    end
  end
end
Quiz.new
