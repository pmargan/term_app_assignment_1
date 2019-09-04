# frozen_string_literal: true

def leader_board
  h = Hash[*File.read('./leaderboard').split(/[, \n]+/)]
  myhash = Hash[h.sort_by { |_k, v| v }.reverse].first(5)
  puts 'TOP 5 SCORES ON LEADERBOARD'
  puts myhash
end
leader_board
