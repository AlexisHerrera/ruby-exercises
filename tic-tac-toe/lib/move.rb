# frozen_string_literal: true

class Move
  attr_reader :row_index, :column_index, :player

  def initialize(row_index, column_index, player)
    raise StandardError unless valid_input?(row_index, column_index)

    @row_index = row_index.to_i
    @column_index = column_index.to_i
    @player = player
  end

  private

  def valid_input?(index_row, index_column)
    indexes_are_integers(index_row, index_column) && indexes_are_in_range(index_row, index_column)
  end

  def indexes_are_integers(index_row, index_column)
    return true if index_row.is_a?(Integer) && index_column.is_a?(Integer)

    index_row.to_i.to_s == index_row && index_column.to_i.to_s == index_column
  end

  def indexes_are_in_range(index_row, index_column)
    index_row.to_i >= 0 && index_row.to_i < 3 && index_column.to_i >= 0 && index_column.to_i < 3
  end
end
