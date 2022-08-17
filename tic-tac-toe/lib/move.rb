# frozen_string_literal: true

class Move
  attr_reader :row_index, :column_index

  def initialize(move_input)
    parsed_input = move_input.split
    @row_index = parsed_input[0].to_i
    @column_index = parsed_input[1].to_i
  end
end
