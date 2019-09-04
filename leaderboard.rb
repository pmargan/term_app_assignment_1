# frozen_string_literal: true

def leader_board
  leaderboard = Hash[*File.read('./leaderboard').split(/[, \n]+/)]
  puts leaderboard.sort.reverse
end
leader_board