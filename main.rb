# frozen_string_literal: true

require_relative 'lib/pokeberu'

inputs = ARGV[0]
print Pokeberu.generate_message_from(inputs)
