# frozen_string_literal: true

class Player
  ONE = :PlayerOne
  TWO = :PlayerTwo
  def make_move_in(_board, _row_index, _column_index)
    raise 'must implement'
  end
end

class PlayerOne < Player
  def ==(other)
    self.class == other.class
  end

  def make_move_in(board, row_index, column_index)
    board.make_a_cross_at(row_index, column_index)
  end
end

class PlayerTwo < Player
  def ==(other)
    self.class == other.class
  end

  def make_move_in(board, row_index, column_index)
    board.make_a_circle_at(row_index, column_index)
  end
end
