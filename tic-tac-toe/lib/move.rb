# frozen_string_literal: true

class Move
  attr_reader :row_index, :column_index, :player

  def initialize(move_input, player)
    split_input = move_input.split
    raise StandardError unless valid_input?(split_input)

    @row_index = split_input[0].to_i
    @column_index = split_input[1].to_i
    @player = player
  end

  private

  def valid_input?(split_input)
    split_input.size == 2 && indexes_are_integers(split_input) && indexes_are_in_range(split_input)
  end

  def indexes_are_integers(split_input)
    split_input[0].to_i.to_s == split_input[0] && split_input[1].to_i.to_s == split_input[1]
  end

  def indexes_are_in_range(split_input)
    split_input[0].to_i >= 0 && split_input[0].to_i < 3 && split_input[1].to_i >= 0 && split_input[1].to_i < 3
  end
end
