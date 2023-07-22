# frozen_string_literal: true

class Pokeberu
  attr_reader :message

  TABLE = [
    ['ア', 'イ', 'ウ', 'エ', 'オ', *'A'..'E'],
    ['カ', 'キ', 'ク', 'ケ', 'コ', *'F'..'J'],
    ['サ', 'シ', 'ス', 'セ', 'ソ', *'K'..'O'],
    ['タ', 'チ', 'ツ', 'テ', 'ト', *'P'..'T'],
    ['ナ', 'ニ', 'ヌ', 'ネ', 'ノ', *'U'..'Y'],
    ['ハ', 'ヒ', 'フ', 'ヘ', 'ホ', 'Z', '?', '!', '-', '/'],
    ['マ', 'ミ', 'ム', 'メ', 'モ', '¥', '&', '🕰️', '☎︎', '☕️'],
    ['ヤ', '(', 'ユ', ')', 'ヨ', '*', '#', ' ', '', ''],
    ['ラ', 'リ', 'ル', 'レ', 'ロ', *'1'..'5'],
    ['ワ', 'ヲ', 'ン', '゛', '゜', *'6'..'9', '0']
  ].freeze

  class << self
    def generate_message_from(inputs)
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
      .map { |row, column| TABLE[row.to_i - 1][column.to_i - 1] }
      .join
  end
end
