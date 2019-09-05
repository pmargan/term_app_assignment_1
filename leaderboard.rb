# frozen_string_literal: true

require 'artii'
# Leaderboard module
module Leaderboard
  def leaderboard
    h = Hash[*File.read('./leaderboard').split(/[, \n]+/)]
    myhash = Hash[h.sort_by { |_k, v| v }.reverse].first(5)
    puts 'TOP 5 SCORES ON LEADERBOARD'.colorize(:green)
    puts myhash
  end
end
