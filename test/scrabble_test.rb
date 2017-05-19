gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    # skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters

    assert_equal 5, Scrabble.new.score("hi")
    assert_equal 4, Scrabble.new.score("be")
  end

  def test_it_can_score_a_word_case_insensitive

    assert_equal 8, Scrabble.new.score("Hello")
    assert_equal 8, Scrabble.new.score("THERE")
    assert_equal 9, Scrabble.new.score("world")
  end

  def test_that_nil_or_empty_string_scores_zero

    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score(" ")
    assert_equal 0, Scrabble.new.score("")
    assert_equal 7, Scrabble.new.score("  over")
  end
end
