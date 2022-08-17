# frozen_string_literal: true

require_relative 'cell'

class Board
  def initialize
    @cell_board = Array.new(3 * 3) { EmptyCell.new }
  end

  def empty_at?(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    cell.empty?
  end

  def is_a_cross_cell_at?(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    cell.is_cross_cell?
  end

  def make_a_cross_at(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    @cell_board[(row_index * 3) + column_index] = cell.mark_as_cross_cell
  end

  def make_move(move)
    make_a_cross_at(move.row_index, move.column_index)
  end

  private

  def get_cell_at(row_index, column_index)
    @cell_board[(row_index * 3) + column_index]
  end
end
