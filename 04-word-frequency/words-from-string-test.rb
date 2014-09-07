require 'minitest/autorun'
require_relative 'words-from-string'

class WordsFromStringTest < MiniTest::Unit::TestCase
  def test_empty_string
    assert_equal [], words_from_string("")
    assert_equal [], words_from_string("         ")
  end

  def test_single_word
    assert_equal ["cat"], words_from_string("cat")
    assert_equal ["cat"], words_from_string("  cat    ")
  end

  def test_many_wors
    assert_equal ["the", "cat", "sat", "on", "the", "map"],
                 words_from_string("the cat sat on the map")
  end

  def test_ignores_punctuation
    assert_equal ["the", "cat's", "mat"],
                 words_from_string("<the!> cat's, --mat-")
  end
end
