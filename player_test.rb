# frozen_string_literal: true

require 'test/unit'
require_relative 'player'

# test for player class
class PlayerTest < Test::Unit::TestCase
  def setup
    user = Player.new
    @player = 'John'
    
  end

  def test_name
    assert_equal('John', @player)
  end
end
