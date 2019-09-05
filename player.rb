# frozen_string_literal: true

# player class gets a player name
class Player
  def name
    # gets player name.
    puts 'Enter your name'
    @player = gets.chomp.downcase
  end
end
