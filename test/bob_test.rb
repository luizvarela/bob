require "test/unit"
require "bob"

class BobTest < MiniTest::Unit::TestCase
  def test_stating_something
    assert_equal 'Whatever.', Bob.new.hey('Tom-ay-to, tom-aaaah-to.')
  end

  def test_asking_a_question
    assert_equal 'Sure.', Bob.new.hey('Does this cryogenic chamber make me look fat?')
  end

  def test_silence
    assert_equal 'Fine. Be that way!', Bob.new.hey('')
  end

  def test_shouting_gibberish
    gibberish = ('A'..'Z').to_a.shuffle[0,10].join
    assert_equal 'Woah, chill out!', Bob.new.hey(gibberish)
  end
end