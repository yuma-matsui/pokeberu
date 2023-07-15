# frozen_string_literal: true

require_relative 'lib/pokeberu'

inputs = ARGV[0]
print Pokeberu.get_message(inputs)
