# frozen_string_literal: true

def leader_board
  h = Hash[*File.read('./leaderboard').split(/[, \n]+/)]
  h.sort_by { |_k, v| }.reverse
  # leaderboard.sort_by { |k, v| }
  # leaderboard.sort_by { |k, v| -v }
  puts h
end
leader_board
