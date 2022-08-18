# frozen_string_literal: true

require_relative 'board'

class BoardAnalyzer
  def initialize(board)
    @board = board
  end

  def game_finished?
    return true if @board.cross_cell_at?(0, 0) && @board.cross_cell_at?(0, 1) && @board.cross_cell_at?(0, 2)

    false
  end
end
