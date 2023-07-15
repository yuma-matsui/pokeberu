# frozen_string_literal: true

require_relative 'table'

def generate_message_from(inputs)
  inputs
    .chars
    .each_slice(2)
    .map { |row, column| TABLE[row.to_i - 1][column.to_i - 1] }
    .join
end
