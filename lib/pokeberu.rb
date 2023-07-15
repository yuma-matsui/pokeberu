# frozen_string_literal: true

class Pokeberu
  attr_reader :message

  TABLE = [
    ['ア', 'イ', 'ウ', 'エ', 'オ', *('A'..'E').to_a],
    ['カ', 'キ', 'ク', 'ケ', 'コ', *('F'..'J').to_a],
    ['サ', 'シ', 'ス', 'セ', 'ソ', *('K'..'O').to_a],
    ['タ', 'チ', 'ツ', 'テ', 'ト', *('P'..'T').to_a],
    ['ナ', 'ニ', 'ヌ', 'ネ', 'ノ', *('U'..'Y').to_a],
    ['ハ', 'ヒ', 'フ', 'ヘ', 'ホ', 'Z', '?', '!', '-', '/'],
    ['マ', 'ミ', 'ム', 'メ', 'モ', '¥', '&', '🕰️', '☎︎', '☕️'],
    ['ヤ', '(', 'ユ', ')', 'ヨ', '*', '#', ' ', '', ''],
    ['ラ', 'リ', 'ル', 'レ', 'ロ', *('1'..'5').to_a],
    ['ワ', 'ヲ', 'ン', '゛', '゜', *('6'..'9').to_a, '0']
  ].freeze

  class << self
    def get_message(inputs)
      new(inputs).message
    end
  end

  def initialize(inputs)
    @message = create_message(inputs)
  end

  private

  def create_message(inputs)
    inputs
      .chars
      .each_slice(2)
      .map { |a, b| TABLE[a.to_i - 1][b.to_i - 1] }
      .join
  end
end
