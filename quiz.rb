# frozen_string_literal: true

require 'artii'
require 'colorize'
require_relative './leaderboard'
require_relative './rules'
require_relative './questions'
require_relative './player'
# Main class for quiz
class Quiz
  include Rules
  include Leaderboard

  def initialize
    # Launches browser showing html file of the rules.
    show_rules
    # Gives time delay for browser to launch
    sleep(2)
    # Add 'gem' called Artii,to enable ascii text transformations
    # Also added 'gem' to colorize the text output for visual emphesis.
    a = Artii::Base.new
    puts a.asciify('QUIZIT').colorize(:green)
    # Displays a welcome message.
    @welcome = "Welcome Developer, you ready to play?\n Enter 'yes' or 'no'"
    puts @welcome
    # capture player intent to continue or not.
    yn = gets.chomp.downcase
    # if they don't want to play then exit program.
    if yn != 'yes'
      puts 'Okay goodbye for now'.colorize(:green)
      exit
    else
      # Get instance of player class and get player name
      @play = Player.new.name
      # Get instance of questions class
      questions = Questions.new
      # call 'start' method to begin quiz
      questions.start
    end
    # Calls leaderboard module shows top 5 players and scores.
    leaderboard
  end
end
Quiz.new
