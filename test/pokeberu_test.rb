# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/pokeberu'

class PokeberuTest < Minitest::Test
  def test_i_love_you
    assert_equal Pokeberu.get_message('1112324493'), 'アイシテル'
  end

  def test_hello_world_!
    assert_equal(
      Pokeberu.get_message('281037373088583048371968'),
      'HELLO WORLD!'
    )
  end

  def test_wine_sommelier
    assert_equal(
      Pokeberu.get_message('0112033573921497009798'),
      'ワインソムリエ2023'
    )
  end

  def test_special_thanks
    assert_equal(
      Pokeberu.get_message('2285136165034513521192210445132504310412713241'),
      'キヨウハホントウニアリカ゛トウコ゛サ゛イマシタ'
    )
  end

  def test_tea_break
    assert_equal(
      Pokeberu.get_message('9690320452887088228313241202459513451575127133'),
      '15シ゛ニ ☕️ キユウケイヲトロウトオモイマス'
    )
  end
end
