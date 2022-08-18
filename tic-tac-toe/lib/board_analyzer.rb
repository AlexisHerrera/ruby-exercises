# frozen_string_literal: true

require_relative 'board'

class BoardAnalyzer
  def initialize(board)
    @board = board
  end

  def game_finished?
    return true if player_one_won? || player_two_won? || draw?

    false
  end

  def player_one_won?
    return true if any_row_only_cross? || any_column_only_cross? || any_diagonal_only_cross?

    false
  end

  def player_two_won?
    return true if any_row_only_circle? || any_column_only_circle? || any_diagonal_only_circle?

    false
  end

  def draw?
    (0..2).each do |row_index|
      (0..2).each do |column_index|
        return false if @board.empty_at?(row_index, column_index)
      end
    end
    true
  end

  private

  def any_row_only?(match_method)
    (0..2).each do |row_index|
      row_has_only_element_type = match_method.call(row_index, 0) &&
                                  match_method.call(row_index, 1) &&
                                  match_method.call(row_index, 2)
      return true if row_has_only_element_type
    end
    false
  end

  def any_column_only?(match_method)
    (0..2).each do |column_index|
      row_has_only_element_type = match_method.call(0, column_index) &&
                                  match_method.call(1, column_index) &&
                                  match_method.call(2, column_index)
      return true if row_has_only_element_type
    end
    false
  end

  def any_diagonal_only?(match_method)
    return true if match_method.call(0, 0) && match_method.call(1, 1) && match_method.call(2, 2)
    return true if match_method.call(2, 0) && match_method.call(1, 1) && match_method.call(0, 2)

    false
  end

  def any_row_only_cross?
    any_row_only?(@board.method(:cross_cell_at?))
  end

  def any_column_only_cross?
    any_column_only?(@board.method(:cross_cell_at?))
  end

  def any_diagonal_only_cross?
    any_diagonal_only?(@board.method(:cross_cell_at?))
  end

  # Circles
  def any_row_only_circle?
    any_row_only?(@board.method(:circle_cell_at?))
  end

  def any_column_only_circle?
    any_column_only?(@board.method(:circle_cell_at?))
  end

  def any_diagonal_only_circle?
    any_diagonal_only?(@board.method(:circle_cell_at?))
  end
end
