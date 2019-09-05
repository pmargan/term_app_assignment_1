# frozen_string_literal: true

require 'test/unit'
require_relative 'questions'

# test for player class
class QuestionsTest < Test::Unit::TestCase
  def setup
    @quest = Questions.new
  end

  def test_start # testing output of method start in Questions class
    @quest_start_output = @quest.start
    assert_equal('Thanks for playing', @quest_start_output)
  end
end
# grrr don't know how to do this test!
