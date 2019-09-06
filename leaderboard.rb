# frozen_string_literal: true

require 'colorize'
# Leaderboard module
module Leaderboard
  def leaderboard
    # Reads into a hash from leaderboard file
    h = Hash[*File.read('./leaderboard').split(/[, \n]+/)]
    # Sorts by value, then reverses it and takes top 5
    myhash = Hash[h.sort_by { |_k, v| v }.reverse].first(5)
    # Outputs the results to screen
    puts 'TOP 5 SCORES ON LEADERBOARD'.colorize(:green)
    puts myhash
  end
end
