# frozen_string_literal: true

require_relative 'cell'
require_relative 'player'

require 'byebug'

class Board
  def initialize
    @cell_board = Array.new(3 * 3) { EmptyCell.new }
  end

  def empty_at?(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    cell.empty?
  end

  def cross_cell_at?(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    cell.cross_cell?
  end

  def circle_cell_at?(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    cell.circle_cell?
  end

  def make_move(move)
    # TODO: polymorphism (player.make_a_move_at(i1, i2))
    make_a_cross_at(move.row_index, move.column_index) if move.player == Player::ONE
    make_a_circle_at(move.row_index, move.column_index) if move.player == Player::TWO
  end

  private

  def make_a_cross_at(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    @cell_board[(row_index * 3) + column_index] = cell.mark_as_cross_cell
  end

  def make_a_circle_at(row_index, column_index)
    cell = get_cell_at(row_index, column_index)
    @cell_board[(row_index * 3) + column_index] = cell.mark_as_circle_cell
  end

  def get_cell_at(row_index, column_index)
    @cell_board[(row_index * 3) + column_index]
  end
end